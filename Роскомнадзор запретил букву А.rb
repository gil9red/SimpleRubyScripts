#! /usr/bin/env ruby


# SOURCE: https://github.com/gil9red/SimplePyScripts/blob/79940a09f5630822749f189cd34ce23735fd7205/%D0%A0%D0%BE%D1%81%D0%BA%D0%BE%D0%BC%D0%BD%D0%B0%D0%B4%D0%B7%D0%BE%D1%80%20%D0%B7%D0%B0%D0%BF%D1%80%D0%B5%D1%82%D0%B8%D0%BB%20%D0%B1%D1%83%D0%BA%D0%B2%D1%83%20%D0%90.py


alp = "абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
result = "Роскомнадзор запретил букву "

# Перебор всех символов алфавита
alp.each_char do |c|
  # Проверяем, что в строке result текущая буква найдена
  if result.include?(c) or result.include?(c.upcase)
    # Выводим надпись
    puts result + c.upcase

    # Удаляем букву из надписи
    result = result.gsub(c, '')
    result = result.gsub(c.upcase, '')
  end
end
