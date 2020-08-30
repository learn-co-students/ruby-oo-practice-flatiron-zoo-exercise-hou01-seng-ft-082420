require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Wahoo Zoo", "Montreal")
z2 = Zoo.new("Glip GLop Zoo", "Montreal")
a1 = Animal.new("Gator", 60, "George", z1)
a2 = Animal.new("Buffalo", 200, "Buffy", z1)
a3 = Animal.new("Buffalo", 250, "Uffalo", z1)



binding.pry
puts "done"
