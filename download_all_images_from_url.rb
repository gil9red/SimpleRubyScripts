#! /usr/bin/env ruby


require 'open-uri'
require 'nokogiri'


def get_url_img_list(url)
  html_text = open(url)

  doc = Nokogiri::HTML(html_text)

  url_list = []

  doc.css('img[src]').each do |img|
    if img['src'].empty?
      next
    end

    img_url = img['src']
    img_url = URI::join(url, img_url).to_s
    url_list << img_url
  end

  return url_list
end


SUPPORTED_EXT = ['jpg', 'jpeg', 'png', 'bmp', 'gif', 'svg']


def download_url_list(url_list, dir_name)
  if not Dir.exist?(dir_name)
    Dir.mkdir(dir_name)
  end

  # Перебор списка URL
  url_list.each do |url|
    data = open(url)

    # Составляем имя файла из URL
    file_name = DIR_NAME + '/' + File.basename(url)

    # Вытаскиваем расширение (формат) файла
    ext = File.extname(file_name).downcase[1..-1]

    # Если расширение nil или пустое
    if ext.nil? or ext.empty?
      next
    end

    # Если расширения нет в списке поддерживаемых
    unless SUPPORTED_EXT.include? ext
      next
    end

    p file_name

    # Сохраняем картинку
    open(file_name, 'wb') do |file|
      file << data.read()
    end
  end
end


DIR_NAME = 'image'

url = 'http://fb.ru/post/literature/2015/11/14/2778'
url_list = get_url_img_list(url)
puts "url_list (#{ url_list.size }): #{ url_list }"

download_url_list(url_list, DIR_NAME)
