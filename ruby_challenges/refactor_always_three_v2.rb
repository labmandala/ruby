# Refactor of Always Three Ruby script
# Refactor previous script to be only three lines of code & one variable

# 1. begin program by prompting number from user
puts "Give me a number:"

# 2. grab number from user with gets,
# transform user's number to integer with .to_i
# set resulting number to a variable called 'number'
number = gets.to_i

# 3. perform math and puts on one line of code
puts 'Always ' + (((number + 5) * 2 - 4) / 2 - number).to_s