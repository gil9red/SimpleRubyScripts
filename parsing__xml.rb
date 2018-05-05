#! /usr/bin/env ruby


require 'nokogiri'


xml_str = <<XML
<root>
  <things type="Container">
    <Id type="Property">1234</Id>
    <Name type="Property">The Name1</Name>
  </things>
  <things type="Container">
    <Id type="Property">2234</Id>
    <Name type="Property">The Name2</Name>
  </things>
</root>
XML

doc = Nokogiri::XML(xml_str)
puts doc
puts


# xpath    -- list items
# at_xpath -- item
p doc.xpath('//Id')
p doc.at_xpath('//Id')
puts
# css    -- list items
# at_css -- item
p doc.css('Id')
p doc.at_css('Id')
puts

p doc.css('Id').map { |i| i.text }
puts

def print_things!(things)
  puts "Things (#{ things.length }):"

  things.each do |thing|
    puts "    Id: '#{ thing.at_xpath('Id').content }', Name: '#{ thing.at_xpath('Name').content }'"
    puts "    Id   = " + thing.at_xpath('Id').content
    puts "    Name = " + thing.at_xpath('Name').content
    puts
  end
end

# XPath
items = doc.xpath('//things')
print_things!(items)

puts "\n"

# CSS-selector
items = doc.css('things')
print_things!(items)