#! /usr/bin/env ruby


require 'open-uri'
require 'json'


text = open('https://bittrex.com/api/v1.1/public/getmarketsummary?market=BTC-TRX')
data = JSON.load(text)
puts data
puts data['result'][0]['Last']
puts

puts 'Result:'
data['result'].each do |i|
  puts "  #{ i['Last'] }"
end
