#! /usr/bin/env ruby


# List
puts [1, 2, 3, 4, 5, 6, 7, 8, 9].inspect
puts
puts 'Hello Ruby!'.split('').map { |i| i + '!' }.inspect
puts [1, 2, 3, 4, 5].map { |i| i ** 2 }.inspect
puts [1, 2, 3, 4, 5].map { |i| i ** 2 }.map { |i| i.to_s }.inspect
puts

# Range
puts (1..9).map { |i| i }.inspect
puts (1..9).to_a.inspect
puts
puts ('a'..'z').to_a.inspect
puts ('A'..'Z').to_a.inspect
