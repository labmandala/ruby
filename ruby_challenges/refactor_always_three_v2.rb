# Refactor of Always Three Ruby script
# Refactor previous script to be fewer lines of code & one variable

# 1. begin program by prompting number from user
puts "Give me a number:"

# 2. grab number from user with gets,
# transform user's number to integer with .to_i
# 3. set resulting number to a variable called 'number'
number = gets.to_i

# 4. perform math
number = (((((number + 5) * 2) - 4) / 2) - number)

# 5. give user the final number
puts "Final number is Always #{number}"