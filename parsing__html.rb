#! /usr/bin/env ruby


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

puts 'TITLE: ' + doc.at_xpath('//title')
puts 'TITLE: ' + doc.at_xpath('//title').content
puts 'TITLE: ' + doc.at_xpath('//title').text
puts 'TITLE: ' + doc.at_xpath('//title/text()')
puts 'TITLE: ' + doc.at_xpath('/html/head/title/text()')
