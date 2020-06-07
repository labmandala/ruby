# Numerology app Ruby script

# App based on the birth path number
# determined by doing a little math magic with date of birth
# birthdate will be reduced to a single digit, 1-9
# that number corresponds to specific message about life path

# 1. Ask the user for their birthdate in format MMDDYYYY
puts "What is your birthdate in the format MMDDYYYY?"

# 2. Use gets method to get their birthdate & assign it to a variable
birthdate = gets 

# 3. Add all the numbers of their birthdate together
# here use array syntax to access each part of birthdate
# convert each part from a string to an integer with .to_i
# add the eight numbers together
# assign the result of additions to a new variable called number
number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + 
birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

# 4. Reduce the number down to a single-digit:
# first convert the number back to a string, using .to_s, in order to use array syntax again 
# then again get each number individually, using array syntax (as in step 3), convert to number
# then add those two numbers together
number = number.to_s
number = number[0].to_i + number[1].to_i

# 5. Use if statement to check if number still is greater than 9
# if so, reduce again down to single-digit birth path number (as in step 4)
if number > 9 then
    number = number[0].to_i + number[1].to_i
end

# 6. Display birth path number to user with the meaning phrase
# use case statement here
case number
when 1
    puts "Your birth path number is #{number}. One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
when 2
    puts "Your birth path number is #{number}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
    puts "Your birth path number is #{number}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
    puts "Your birth path number is #{number}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
    puts "Your birth path number is #{number}. This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
    puts "Your birth path number is #{number}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
    puts "Your birth path number is #{number}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
    puts "Your birth path number is #{number}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
    puts "Your birth path number is #{number}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end