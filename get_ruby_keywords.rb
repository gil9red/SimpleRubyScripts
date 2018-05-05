#! /usr/bin/env ruby


require 'irb/ruby-token'

keywords = RubyToken::TokenDefinitions.select { |definition| definition[1] == RubyToken::TkId }
                                      .map { |definition| definition[2] }
                                      .compact
                                      .sort

puts "keywords:\n" + keywords.join(", ")
# BEGIN, END, __FILE__, __LINE__, alias, and, begin, break, case, class, def, defined?, do, else, elsif, end,
# ensure, false, for, if, in, module, next, nil, not, or, redo, rescue, retry, return, self, super, then, true,
# undef, unless, until, when, while, yield

print "keywords: %s\n" % [keywords]
# keywords: ["BEGIN", "END", "__FILE__", "__LINE__", "alias", "and", "begin", "break", "case", "class", "def",
# "defined?", "do", "else", "elsif", "end", "ensure", "false", "for", "if", "in", "module", "next", "nil", "not",
# "or", "redo", "rescue", "retry", "return", "self", "super", "then", "true", "undef", "unless", "until", "when",
# "while", "yield"]
