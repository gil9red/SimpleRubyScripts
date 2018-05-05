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
  title "Label Image"
}
center_window(app)

image = TkPhotoImage.new('file' => 'image.png')
label_image = TkLabel.new(app) { image image }
label_image.pack()

Tk.mainloop
