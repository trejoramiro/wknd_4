# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Math

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

end

class SimpleCalculator

  include Math

  # def add(first_number, second_number)
  #   first_number + second_number
  # end

  # def subtract(first_number, second_number)
  #   first_number - second_number
  # end

  # def multiply(first_number, second_number)
  #   first_number * second_number
  # end

  # def divide(first_number, second_number)
  #   first_number / second_number
  # end

end

class FancyCalculator

  # def add(first_number, second_number)
  #   first_number + second_number
  # end

  # def subtract(first_number, second_number)
  #   first_number - second_number
  # end

  # def multiply(first_number, second_number)
  #   first_number * second_number
  # end

  # def divide(first_number, second_number)
  #   first_number / second_number
  # end

  include Math

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
puts "Testing Stats..."
puts

# Write your own driver code below:
calc = FancyCalculator.new()

puts "Testing addition..."
puts

if calc.add(2,2) == 4
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing subtraction..."
puts

if calc.subtract(5,2) == 3
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing multiply..."
puts

if calc.multiply(5,2) == 10
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing division..."
puts

if calc.divide(6,2) == 3
  puts "PASS"
else
  puts "FAIL"
end

puts "Testing square root..."
puts

if calc.square_root(4) == 2
  puts "PASS"
else
  puts "FAIL"
end
