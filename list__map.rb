#! /usr/bin/env ruby


puts 'Hello Ruby!'.split('').map { |i| ".#{i}." }.inspect
puts [1, 2, 3, 4, 5].map { |i| i ** 2 }.inspect
puts [1, 2, 3, 4, 5].map { |i| i ** 2 }.map { |i| ".#{i}." }.inspect
