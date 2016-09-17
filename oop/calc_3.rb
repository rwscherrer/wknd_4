# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.
module Calculations

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

  def square_root(number)
    Math.sqrt(number)
  end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end


class SimpleCalculator
  include Calculations

  def initialize(simple)
    @simple = simple
  end

end

class FancyCalculator
  include Calculations


  def initialize(fancy)
    @fancy = fancy
  end

end

class WhizBangCalculator
  include Calculations

  def initialize(whizbang)
    @whizbang = whizbang
  end

end

# Copy your driver code from the previous exercise and more below:


simple = SimpleCalculator.new(first_number: 3, second_number: 3)

fancy = FancyCalculator.new(number: 9)

whizbang = WhizBangCalculator.new(first_number: 4, second_number: 4, exponent_number: 4)


result = simple.add(3, 3)

puts "Testing Addition"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

result = simple.subtract(3, 3)

puts "Testing Subtraction"
puts result
puts

if result == 0
  puts "PASS!"
else
  puts "F"
end

result = simple.multiply(3, 3)

puts "Testing Multiplication"
puts result
puts

if result == 9
  puts "PASS!"
else
  puts "F"
end

result = simple.divide(3, 3)

puts "Testing Division"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end

result = fancy.square_root(9)

puts "Testing Square Root"
puts result
puts 

if result == 3
  puts "PASS!"
else
  puts "F"
end

result = whizbang.hypotenuse(4, 4)

puts "Testing hypotenuse"
puts result
puts 


if result == 5.656854249492381
  puts "PASS!"
else
  puts "F"
end

result = whizbang.exponent(4, 4)

puts "Testing exponent"
puts result
puts 


if result == 256
  puts "PASS!"
else
  puts "F"
end

