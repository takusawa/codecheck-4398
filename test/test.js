"use strict";

const assert = require("chai").assert;
const codecheck = require("codecheck");

const COMMAND = process.env.APP_COMMAND;

describe("Challenge validation", () => {
  const app = codecheck.consoleApp(COMMAND);
  const cases = require("./testcases.json");
  cases.forEach(v => {
    let desc = v.it || `${v.input} =>=> ${v.output}`;
    it(desc, () => {
      return app.codecheck(v.input)
        .then(result => {
          assert.equal(result.code, 0);
          assert.deepEqual(result.stdout, v.output);
        });
    });
  });
});
