# Case Statement Ruby script

# Recall to prompt user for input
puts "What's the weather like today?"

# 1. Create a variable to hold weather, limit to single word
weather = 'sunny'

weather = gets

# 2. Start case statement with keyword 'case' then variable
case weather
# 3. Use 'when' keyword to check a string for weather variable, followed by a puts line with advice
# 4. Create various when / puts lines to check for different kinds of weather
when 'cloudy'
    puts "Carry a raincoat with you."
when 'foggy'
    puts "Be prepared to go slowly."
when 'rainy'
    puts "Grab your umbrella."
when 'blue'
    puts "Consider packing a picnic."
else
    puts "Get your sunglasses and a back up plan!"
# 5. Remember to close with 'end' keyword
end
