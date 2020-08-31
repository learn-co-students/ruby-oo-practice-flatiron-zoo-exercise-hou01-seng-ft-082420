require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("tx zoo", "tx")
z2 = Zoo.new("ca zoo", "ca")
z3 = Zoo.new("zoo", "tx")
a1 = Animal.new("lion", 20, "m", "tx zoo")
a2 = Animal.new("tiger", 30, "m", "ca zoo")
a3 = Animal.new("wolf", 30, "h", "ca zoo")
a4 = Animal.new("deer", 25, "h", "tx zoo")
a5 = Animal.new("dog", 15, "m", "ca zoo")

binding.pry
puts "done"
