#!/usr/bin/ruby


require 'digest'

text = 'Hello World'

puts Digest::MD5.hexdigest(text)
puts Digest::SHA1.hexdigest(text)
puts Digest::SHA256.hexdigest(text)
puts Digest::SHA512.hexdigest(text)
