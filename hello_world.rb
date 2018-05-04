#!/usr/bin/ruby

puts 'Hello Ruby!'

text = 'RUBY'
puts "Hello " + text + "!"
puts "Hello %s!" % [text]
puts "Hello #{text}!"
puts

class Foo
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def say()
    puts "Hello #{@name}!"
  end
end

d = Foo.new("Ruby")
puts "Hello #{d.name}!"
d.say()
