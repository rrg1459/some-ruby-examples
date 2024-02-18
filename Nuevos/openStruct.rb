require 'ostruct'

person = OpenStruct.new
person.name    = "John Smith"
person.age     = 70
person.pension = 300

puts person.name     # -> "John Smith"
puts person.age      # -> 70
puts person.address  # -> nil


# https://ruby-doc.org/stdlib-2.0.0/libdoc/ostruct/rdoc/OpenStruct.html