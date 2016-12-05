def main(argv)
  argv.each do |v|
    puts v
  end
end

input = gets.split(" ")
number = input[0]
option = input[1]
desig  = input[2]

number_arr = number.split(",")
option_arr = option.split(",")

magicsquare = [[0,0,0], [0,0,0], [0,0,0]]

option_arr.each do |opt|
  case opt[0]
  when "A" then
    magicsquare[0][0] = opt[1]
  when "B" then
    magicsquare[0][1] = opt[1]
  when "C" then
    magicsquare[0][2] = opt[1]
  when "D" then
    magicsquare[1][0] = opt[1]
  when "E" then
    magicsquare[1][1] = opt[1]
  when "F" then
    magicsquare[1][2] = opt[1]
  when "G" then
    magicsquare[2][0] = opt[1]
  when "H" then
    magicsquare[2][1] = opt[1]
  when "I" then
    magicsquare[2][2] = opt[1]
  end

  if ((magicsquare[0][0] + magicsquare[0][0] + magicsquare[0][0]).to_i < 6) then
    #error......
  end

end


