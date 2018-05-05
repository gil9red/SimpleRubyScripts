#! /usr/bin/env ruby


# List
items = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p items  # [1, 2, 3, 4, 5, 6, 7, 8, 9]

# +1+2+3+4+5+6+7+8+9
items.each do |i|
  print '+' + i.to_s
end
puts

puts
p 'Hello Ruby!'.split('').map { |i| i + '!' }
p [1, 2, 3, 4, 5].map { |i| i ** 2 }
p [1, 2, 3, 4, 5].map { |i| i ** 2 }.map { |i| i.to_s }
puts

# "0, 1, 4, 9, 16, 25, 36, 49, 64, 81"
p 10.times.map{ |i| i ** 2 }.join(', ')
puts

# +0+1+2+3+4+5+6+7+8+9
10.times.each do |i|
  print '+' + i.to_s
end
puts

# Range
p (1..9).map { |i| i }
p (1..9).to_a
puts
p ('a'..'z').to_a
p ('A'..'Z').to_a
