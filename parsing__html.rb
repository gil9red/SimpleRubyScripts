#!/usr/bin/ruby


require 'nokogiri'

html_str = <<HTML
<html>
    <head>
        <title>Html parsing test</title>
    </head>

    <body>
    </body>
</html>
HTML

doc = Nokogiri::HTML(html_str)
puts doc
puts

puts doc.at_xpath('//title')
puts doc.at_xpath('//title').content
puts doc.at_xpath('//title/text()')
puts doc.at_xpath('/html/head/title/text()')
