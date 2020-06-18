# Numerology app Ruby script, refactored to improve methods

# App based on the birth path number determined by calculating birthdate numbers, then
# reducing to a single digit, and that resulting number corresponds to message about birth path

# 1. Get user's birthdate and assign response to variable with gets
def determine_birthdate
    puts "What is your birthdate in the format MMDDYYYY?"
    birthdate = gets 
end

# 2. Determine birth path number inside a method, take birthdate as an argument
# 3. Assign the return value from your first method to a variable
def birthpath_method
    birthdate = determine_birthdate
    # Add all the numbers of their birthdate together using array syntax
    # convert each part from a string to an integer with .to_i
    # add the eight numbers together and assign the result of additions to a new variable called number
    birthpath = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + 
    birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

    # Reduce the number down to a single-digit:
    # first convert the number back to a string, using .to_s, in order to use array syntax again 
    # then again get each number individually, convert to number then add those two numbers together
    birthpath = birthpath.to_s
    birthpath = birthpath[0].to_i + birthpath[1].to_i

    # Use if statement to check if number still is greater than 9
    # if so, reduce again down to single-digit birth path number (as in step 4)
    # return value of this method will be the birth path number
    if birthpath > 9 then
        birthpath = birthpath[0].to_i + birthpath[1].to_i
    end
end

# 4. Create method to figure out correct message to display
# take in birth path number as argument, return value of method will be message
def message
    # 5. Assign return value from second method to a variable
    number = birthpath_method
# 6. Using puts, display birth path number with the message. Change case statement to if/else.
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
    else 
        puts "This is most unusual..."
    end
end

# call message method
message