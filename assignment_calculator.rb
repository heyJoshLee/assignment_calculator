# Code up your own calculator from the lecture. Make sure you can 
#   run it from the command line. Save the calculator file in a 
#   directory, and initialize the directory as a git repository. 
#   Make sure this isn't nested in another existing git repository. 
#   Then, push this git repository to Github.

# Hint: review this section on “do/while” loops on how to keep asking 
#   for input until some condition is met: 
#   http://www.gotealeaf.com/books/ruby/read/loops_iterators#dowhileloops

# I'm having trouble with number validation. I tried using while statement
#   to test if num1 / num2 where numbers by using .is_a? Numeric, but gets
#   returns a string. I tried calling .to_i on num1 / num2 but I would get
#   a 0.

# I'm wondering if I'm supposed to worry about adding, subtracting or multiplying
#  floats. I could convert num1 / num 2 to floats as soon as the user enters them
#  but then I woudld always get trailing zeros like 10.00. I may be able to check for 
#  trailing zeros and then delete them.

def say(msg)
  puts "=> #{msg}"
end

puts "Welcome to my calculator." 

say("Please enter your first number.")
num1 = gets.chomp # TO DO: number validation 


say("Please enter your second number.")
num2 = gets.chomp # TO DO: number validation 

ans = 0
 
loop do # This loop makes sure the user enters 1-4 for the operation
  puts "Please select your operation:"
  puts "1) add 2) subtract 3) multiply 4) divide"
  op = gets.chomp # op is short for operation
  ans = 
  case op
  when "1"
    num1.to_i + num2.to_i
  when "2"
    num1.to_i - num2.to_i
  when "3"
    num1.to_i * num2.to_i
  when "4"
    num1.to_f / num2.to_f
  end
  if op == "1" || op == "2" || op == "3" || op == "4"
    break
  end
end

say("ANSWER: #{ans}")








