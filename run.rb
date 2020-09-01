require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
c = Zoo.new("chicago zoo", "chicago")
s = Zoo.new("Best Zoo Ever", "san diego")
pig = Animal.new("pig", 175, "pork chop")
lion = Animal.new("lion", 590, "Lebron")
lioness = Animal.new("lion", 450, "Libra")
lion.zoo = c
pig.zoo = s 
lioness.zoo = c



binding.pry
puts "done"
