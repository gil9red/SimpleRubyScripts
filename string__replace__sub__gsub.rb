#!/usr/bin/ruby


value = "abc abc"
puts value                                # abc abc
puts

# Sub replaces just the first instance.
puts value.sub("abc", "---")              # --- abc
puts value.sub(/ab./, "---")              # --- abc
puts

# Gsub replaces all instances. G -- global. In java: replace and replaceAll
puts value.gsub("abc", "---")             # --- ---
puts value.gsub(/ab./, "---")             # --- ---
