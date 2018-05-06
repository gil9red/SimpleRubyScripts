#! /usr/bin/env ruby


require 'open-uri'
require 'base64'


# Download image and convert to base64
url = 'https://www.python.org/static/img/python-logo.png'
img_data = open(url).read()
img_base64_data = Base64.encode64(img_data)
p img_base64_data
