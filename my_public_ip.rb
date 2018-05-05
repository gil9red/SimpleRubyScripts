#!/usr/bin/ruby


require 'open-uri'
require 'json'

url = 'http://jsonip.com/'
rs = open(url)
data = JSON.load(rs)
puts data['ip']
