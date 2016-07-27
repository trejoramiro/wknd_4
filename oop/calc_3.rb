# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

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

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

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

  # def square_root(number)
  #   Math.sqrt(number)
  # end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "Testing Stats..."
puts

# Write your own driver code below:
calc = FancyCalculator.new()
calc2 = WhizBangCalculator.new()

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

puts "Testing hypotenuse..."
puts

if calc2.hypotenuse(3,4) == 5
  puts "PASS"
else
  puts "FAIL"
end


puts "Testing exponent..."
puts

if calc2.exponent(5,3) == 125
  puts "PASS"
else
  puts "FAIL"
end
