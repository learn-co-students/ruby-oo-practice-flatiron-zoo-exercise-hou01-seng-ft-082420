class Animal
    attr_accessor :nickname, :weight, :species
    attr_reader :zoo

    @@all = []

    def initialize(nickname, weight, species, zoo)
        @nickname = nickname
        @weight = weight
        @species = species
        @zoo = zoo
        @@all << self

    end

    def self.all
        @@all
    end

    def self.zoo
        zoo.name
    end

    def find_by_species
        Animal.all.select do |animal| 
            animal.species == self.species
        end
    end




end
