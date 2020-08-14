# Numerology App Ruby script, alternate version

# ask user for birthday to calculate first number
puts "What is your #(birthday) in MMDDYYYY format?"

birthday = gets
birthday.split('')
array = []

# conversion to integer
birthday.each_char {|c| array << c.to_i}
birthday_array = array

# puts birthday_array
birthday_sum = array.inject(0){|sum,x| sum + x }
puts birthday_sum

# calculate sum of digits from first number, iterate
puts "What is your #(birth_number). Enter number from last line."
birth_number= gets
birth_number.split('')
array=[]
birth_number.each_char {|c| array << c.to_i}
bn_array = array

# puts bn_array
bn_array.to_s.chars.map(&:to_i)
bn_array = array.inject(0){|sum,x| sum + x }
puts bn_array

# calculate resulting digits to get final sum (single digit # < 9), iterate
puts "What is #(final_number). Enter number from last line."
final_number = gets
final_number.split('')
array=[]
final_number.each_char {|c| array << c.to_i}
fn_array = array

# puts fn_array
fn_array.to_s.chars.map(&:to_i)
fn_array = array.inject(0){|sum,x| sum + x }
puts fn_array

# return result of final sum
case fn_array
when 1
  puts "One is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
when 2
  puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when 3
  puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."
when 4
  puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when 5
  puts "This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when 6
  puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when 7
  puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when 8
  puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when 9
  puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
else
  puts "Calculate your number again. Thanks!"
end
