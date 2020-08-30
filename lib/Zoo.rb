require 'pry'
class Zoo
    @@all = []
    attr_accessor :name, :location 

    def initialize (name, location)
        @name = name
        @location = location 
        self.class.all << self
    end 

    def self.all 
        @@all
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end 
    def animal_species 
        animals.map {|animal| animal.species}.uniq 
    end

    def find_by_species (species)
        animals.select do |animals| 
        animals.species == species
        end 
    end 

    def animal_nicknames
        animals.map {|animals| animals.nickname}
    end 

    def self.find_by_location (location)
        @@all.select {|zoos| zoos.location == location}
        #Zoo.find_by_location("Montreal")
    end 
    binding.pry
    0
    
end
