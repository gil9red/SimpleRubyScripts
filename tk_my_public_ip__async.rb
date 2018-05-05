#!/usr/bin/ruby


require 'tk'
require 'open-uri'
require 'json'

def center_window(root, width=300, height=200)
    # get screen width and height
    screen_width = root.winfo_screenwidth()
    screen_height = root.winfo_screenheight()

    # calculate position x and y coordinates
    x = (screen_width / 2) - (width / 2)
    y = (screen_height / 2) - (height / 2)
    root.geometry('%dx%d+%d+%d' % [width, height, x, y])
end

app = TkRoot.new {
  title "Window"
}
center_window(app)

label = TkLabel.new(app) {
  text '<Unknown ip>'
  pack {}
}

button = TkButton.new(app) {
  text "Get IP!"
  pack {}
  command proc {
      thread = Thread.new {
        url = 'http://jsonip.com/'
        rs = open(url)
        data = JSON.load(rs)
        ip = data['ip']

        puts ip
        label.text = ip
      }
      thread.run()
  }
}

Tk.mainloop
