# Refactor of Always Three Ruby script
# Refactor to use only two variables
# Refactor to more efficient code, remove repetition

# 1. begin program by prompting number from user
puts "Give me a number:"

# 2. grab number from user with gets,
# transform user's number to integer with .to_i
# 3. set resulting number to a variable
first_number = gets.to_i
# 4. set final number to variable for all calculations to maintain original number's value
final_number = first_number
# 5. perform math on number
final_number += 5
final_number *= 2
final_number -= 4
final_number /= 2
final_number -= first_number

# 5. give user the final number
puts "Final number is Always #{final_number}"