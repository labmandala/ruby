# write ruby program to print numbers 1 to 100;
# for multiples of 3, print "Fizz" instead of number,
# for multiples of 5, print "Buzz" instead and...
# for numbers which are multiples of both 3 & 5, print "FizzBuzz"

1.upto(100) do |i|
    # move this conditional statement to top to be run first, so it's not passed through by others
    if i % 3 == 0 && i % 5  == 0
        puts "FizzBuzz"
    elsif i % 3 == 0
        puts "Fizz"
    elsif i % 5 == 0
        puts "Buzz"
    else
        puts 1
    end
end