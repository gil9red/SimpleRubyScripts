#! /usr/bin/env ruby


text = <<MY_TEXT
1 + 1 = 2
Hello World!

.
MY_TEXT

puts text
p text
puts

text2 = <<MY_TEXT
1 + 1 = 2
MY_TEXT

text3 = <<X
2 + 2 * 2 = #{ 2 + 2 * 2 }
X

puts text2
puts text3
