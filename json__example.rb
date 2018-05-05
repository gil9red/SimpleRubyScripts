#!/usr/bin/ruby


require 'json'

text = <<JSON
{
    "value": 1,
    "items": [1, 2, 3],
    "tree": {
        "root": {
            "node": "THIS"
        }
    }
}
JSON

data = JSON.load(text)
puts data
puts data['items'].inspect
puts data['tree']['root']['node']
