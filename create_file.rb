#! /usr/bin/env ruby


text = 'Hello World!' + "\n" + 'Привет мир!'

File.write('hello world.txt', text)

File.open("hello world 2.txt", "wb") do |f|
  f.write(text)
end


require 'open-uri'

open("hello world 3.txt", 'wb') do |file|
  file << text
end
