# prompt user for input
puts "Enter your name: "
# get name and chomp off new line after variable
name = gets.chomp()
puts "Enter your favorite color: "
color = gets.chomp()
puts ("Hello " + name + ", your aura is glowing " + color)
