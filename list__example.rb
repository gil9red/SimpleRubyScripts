#! /usr/bin/env ruby


# List
p [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts
p 'Hello Ruby!'.split('').map { |i| i + '!' }
p [1, 2, 3, 4, 5].map { |i| i ** 2 }
p [1, 2, 3, 4, 5].map { |i| i ** 2 }.map { |i| i.to_s }
puts

# Range
p (1..9).map { |i| i }
p (1..9).to_a
puts
p ('a'..'z').to_a
p ('A'..'Z').to_a
