#! /usr/bin/env ruby


require "base64"


text = 'Hello World'

text_base64 = Base64.encode64(text)
puts text_base64                   # SGVsbG8gV29ybGQ=
puts Base64.decode64(text_base64)  # Hello World
puts

# true
puts text == Base64.decode64(text_base64)
puts text == Base64.decode64(Base64.encode64(text))
