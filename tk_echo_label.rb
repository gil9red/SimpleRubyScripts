#!/usr/bin/ruby

require 'tk'

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

line_edit1 = TkEntry.new(app) { pack {} }
label1 = TkLabel.new(app) { pack {} }
label2 = TkLabel.new(app) { pack {} }

line_edit1.bind("KeyRelease", proc {
  text = line_edit1.get
  label1['text'] = text
  label2['text'] = text.reverse
})

Tk.mainloop
