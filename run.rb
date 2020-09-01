require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#Zoos
z1 = Zoo.new("Zoo1", "HTX")
z2 = Zoo.new("Zoo2","The Moon")

#Animals
a1 = Animal.new('dog',10,'j',z1)
a2 = Animal.new('dog',20,'dirty p',z1)
a1 = Animal.new('cat',8,'cat hatter',z1)
a3 = Animal.new('liger',700,'chucky',z2)
binding.pry
puts "done"