#!/usr/bin/ruby

require 'tk'
require 'open-uri'
require 'json'

app = TkRoot.new {
  title "Window"
}

label = TkLabel.new(app) {
  text '<Unknown ip>'
  pack {}
}

but = TkButton.new(app) {
  text "Get IP!"
  pack {}
  command proc {
    url = 'http://jsonip.com/'
    rs = open(url)
    data = JSON.load(rs)

    label.text = data['ip']
  }
}

Tk.mainloop
