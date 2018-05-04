#!/usr/bin/ruby

# TEST: CTRL + SHIFT + ALT + R

puts 'Hello World'

require 'tk'

app = TkRoot.new {
  title "Window"
  padx 200
  pady 200
}

line_edit1 = TkEntry.new(app) { pack {} }
label1 = TkLabel.new(app) { pack {} }
label2 = TkLabel.new(app) { pack{} }

line_edit1.bind("KeyRelease", proc {
  text = line_edit1.get
  label1['text'] = text
  label2['text'] = text.reverse
})

Tk.mainloop
