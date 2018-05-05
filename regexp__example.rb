#! /usr/bin/env ruby


# "Hello Ruby!"
p '5H1ello123 Ru2by!9'.gsub(/\d/, '')
p '5H1ello123 Ru2by!9'.gsub(/[0-9]/, '')
puts

# "5112329"
p '5H1ello123 Ru2by!9'.gsub(/\D/, '')
p '5H1ello123 Ru2by!9'.gsub(/[^0-9]/, '')
puts

p "Hello    Ruby!".gsub(/\s{2,}/, ' ')  # "Hello Ruby!"
puts

p "12:35".partition(/[:\.,]/)  # ["12", ":", "35"]
puts

text = <<EOF
The string from which you want
to get a list of words.
EOF

# ["The", "string", "from", "which", "you", "want", "to", "get", "a", "list", "of", "words"]
pattern = /[^[:word:]]+/
p text.split(pattern)

# ["The", "string", "from", "which", "you", "want", "to", "get", "a", "list", "of", "words"]
p text.scan(/[[:word:]]+/)

# ["The", "string", "from", "which", "you", "want", "to", "get", "a", "list", "of", "words"]
p text.scan(/\b\w+\b/)
