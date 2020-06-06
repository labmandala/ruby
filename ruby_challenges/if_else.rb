# If / Else Ruby script

# 1. simple math equation for if statement
if 1 + 1 == 2
    puts "1 and 1 does indeed equal 2"
end

# 2. use a string for if statement
# first create a variable
my_name = "Sarah"
if my_name == "Sarah"
    puts "Hello, Sarah!"
# end
# 3. remove 'end' & add in else statement to if statement under "puts..."
else
    puts "Oops, I thought your name was Sarah. Sorry about that, #{my_name}!"
end

# 4. display message based on favorite color
fav_color = 'pink'
if (fav_color == 'red')
    puts "Red like fire!"
elsif (fav_color == 'orange')
    puts "Orange like, well... an orange."
elsif (fav_color == 'yellow')
    puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color == 'green')
    puts "Have you been to the Emerald City in Oz?"
elsif (fav_color == 'blue')
    puts "Blue like the sky!"
elsif (fav_color == 'purple')
    puts "Purple plums are the tastiest."
else
    puts "Hmm, well I don't know what that color is!"
end