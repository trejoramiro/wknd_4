# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  missing_letters = ""

  n = range.length - 1
  prev_ascii = range[0].ord

  range.split("")[1..n].each do |char|
    if char.ord == (prev_ascii + 1 )
      prev_ascii = char.ord
    else
      missing_char = (prev_ascii + 1).chr
      missing_letters = missing_letters + missing_char
      prev_ascii = char.ord
    end
  end

  if missing_letters.length == 0
    missing_letters = nil
  end

  return missing_letters
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("ace")

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end
