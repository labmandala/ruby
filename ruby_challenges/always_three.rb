# Always Three Ruby script

# 1. begin program by prompting number from user
puts "Give me a number:"

# 2. grab number from user with gets,
# transform user's number to integer with .to_i
# 3. set resulting number to a variable called 'first_number'
first_number = gets.to_i

# 4. add 5 to first_number
mid_number = first_number + 5

# 5. multiply by 2
mid_number = mid_number * 2

# 6. subtract 4
mid_number = mid_number - 4

# 7. divide by 2
mid_number = mid_number / 2

# 8. subtract the first number from the final number
final_number = mid_number - first_number

# 9. give user the final number
puts "Final number is Always #{final_number}"