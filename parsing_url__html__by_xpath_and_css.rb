#! /usr/bin/env ruby


require 'nokogiri'
require 'open-uri'


# SOURCE: https://github.com/sparklemotion/nokogiri#synopsis

# Fetch and parse HTML document
html_text = open('http://www.nokogiri.org/tutorials/installing_nokogiri.html')
doc = Nokogiri::HTML(html_text)

puts "### Search for nodes by css"
doc.css('nav ul.menu li a', 'article h2').each do |link|
  puts link.content.inspect
end
puts

puts "### Search for nodes by xpath"
doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
  puts link.content.inspect
end
puts

puts "### Or mix and match."
doc.search('nav ul.menu li a', '//article//h2').each do |link|
  puts link.content.inspect
end
