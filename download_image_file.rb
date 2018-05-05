#! /usr/bin/env ruby


require 'open-uri'


url = 'https://www.python.org/static/img/python-logo.png'
file_name = 'image.png'

data = open(url).read()

open(file_name, 'wb') do |file|
  file << data
end
