#!/usr/bin/ruby

require 'tk'

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
    require 'open-uri'
    require 'json'

    url = 'http://jsonip.com/'
    rs = open(url)
    data = JSON.load(rs)

    label.text = data['ip']
  }
}

Tk.mainloop
