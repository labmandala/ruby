# FizzBuzz version with string concatenation

1.upto(100) do |i|
    str = ""

    str += "Fizz" if i % 3 == 0
    str += "Buzz" if i % 5 == 0
    str += i      if str.blank?

    puts str
end