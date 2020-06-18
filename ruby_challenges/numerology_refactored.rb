# Numerology App Ruby script, refactored to improve methods

# This method accepts the birthdate as an argument and determines the birth path number;
# the birth path number is the return value
def get_birth_path_num(birthdate)
    # Add all the numbers of their birthdate together using array syntax
    # convert each part from a string to an integer with .to_i
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + 
    birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

    # Reduce the number down to a single-digit:
    # first convert the number back to a string, using .to_s, in order to use array syntax again 
    # then again get each number individually, convert to number then add those two numbers together
    number = number.to_s
    number = number[0].to_i + number[1].to_i

    # Use if statement to check if number still is greater than 9
    # if so, reduce again down to single-digit birth path number (as in step 4)
    # return value of this method will be the birth path number
    if number > 9 
        number = number.to_s
        number = number[0].to_i + number[1].to_i
    end

    return number
end

# This method accepts the birth path number as an argument and determines the correct message;
# the message is the return value
def get_message(birth_path_num)
    case birth_path_num
    when 1
        message = "Your birth path number is #{birth_path_num}. One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
    when 2
        message = "Your birth path number is #{birth_path_num}. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        message = "Your birth path number is #{birth_path_num}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        message = "Your birth path number is #{birth_path_num}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        message = "Your birth path number is #{birth_path_num}. This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        message = "Your birth path number is #{birth_path_num}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        message = "Your birth path number is #{birth_path_num}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
        message = "Your birth path number is #{birth_path_num}. This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        message = "Your birth path number is #{birth_path_num}. This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    else 
        message = "This is most unusual..."
    end
end

# Prompt user for birthdate and assign response to variable with gets
puts "What is your birthdate in the format MMDDYYYY?"
birthdate = gets 

# Get birth path number using the method & assign to variable
birth_path_num = get_birth_path_num(birthdate)

# Get the correct message using the method & assign to variable
message = get_message(birth_path_num)

# display message to user
puts message