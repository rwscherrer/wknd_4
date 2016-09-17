# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
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

# Copy your driver code from the previous exercise below:


simple = SimpleCalculator.new(first_number: 3, second_number: 3)

fancy = FancyCalculator.new(number: 9)


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

