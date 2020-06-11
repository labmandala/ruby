# Refactor of Always Three Ruby script
# Refactor script to accept arguments
 
# method accepts the user's number as an argument in parentheses, calculates, returns the result
def always_three(number)
    (((number + 5) * 2 - 4) / 2 - number)
end
 
# ask the user for a number
puts "Give me a number"
 
# get the user's number with gets & use to_i to convert to an integer
# set to a variable
first_number = gets.to_i
 
puts "Always " + always_three(first_number).to_s



# Refactor script to be a method

## define method and calculate
#def always_three(number)
#number = (((number + 5) * 2 - 4) / 2 - number).to_s
#end

## prompt user for number
#puts "Give me a number:"

## gets number from user, converts to integer, sets it to variable
#number = gets.to_i

## give user final result
#puts "Always #{always_three(number)}"



# alternative possibility:

# Always 3 Ruby script
 
#def always_three
    ## ask the user for a number
    #puts "Give me a number"
 
    ## get the user's number with gets & use to_i to convert to an integer
    ## set to a variable
    #first_number = gets.to_i
 
    ## math and puts on one line!
    #puts 'Always ' + (((first_number + 5) * 2 - 4) / 2 - first_number).to_s
#end
 
#always_three