#! /usr/bin/env ruby


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
p data['items']
puts data['tree']['root']['node']
