# Refactor of Always Three Ruby script
# Refactor to use only two variables
# Refactor to more efficient code, remove repetition

# 1. begin program by prompting number from user
puts "Give me a number:"

# 2. grab number from user with gets,
# transform user's number to integer with .to_i
# 3. set resulting number to a variable called 'number'
# 4. perform math on number
first_number = gets.to_i
number = first_number
first_number += 5
first_number *= 2
first_number -= 4
first_number /= 2
first_number -= number

# 5. give user the final number
puts "Final number is Always #{first_number}"