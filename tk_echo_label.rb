#!/usr/bin/ruby

require 'tk'

app = TkRoot.new {
  title "Window"
}

line_edit1 = TkEntry.new(app) { pack {} }
label1 = TkLabel.new(app) { pack {} }
label2 = TkLabel.new(app) { pack {} }

line_edit1.bind("KeyRelease", proc {
  text = line_edit1.get
  label1['text'] = text
  label2['text'] = text.reverse
})

Tk.mainloop
