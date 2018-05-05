#!/usr/bin/ruby


require 'tk'
require 'open-uri'
require "base64"


def center_window(root, width=300, height=200)
    # get screen width and height
    screen_width = root.winfo_screenwidth()
    screen_height = root.winfo_screenheight()

    # calculate position x and y coordinates
    x = (screen_width / 2) - (width / 2)
    y = (screen_height / 2) - (height / 2)
    root.geometry('%dx%d+%d+%d' % [width, height, x, y])
end

# Download image and convert to base64
url = 'https://www.python.org/static/img/python-logo.png'
img_data = open(url).read()
img_base64_data = Base64.encode64(img_data)

app = TkRoot.new {
  title "Label Image"
}
center_window(app)

image = TkPhotoImage.new('data' => img_base64_data)
label_image = TkLabel.new(app) { image image }
label_image.pack()

Tk.mainloop
