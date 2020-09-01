class Zoo
    
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location

        self.class.all << self
    end 

    def self.all
        @@all
    end

    def animals 
        Animal.all.select{|animals| animals.zoo == self}
    end 

    def animal_species
        (self.animals.collect{|animals| animals.species}).uniq
    end 

    def find_by_species(species)
        self.animals.select{|animals| animals.species == species}
    end 

    def animal_nicknames
        self.animals.collect{|animals| animals.nickname}
    end 

    def self.find_by_location(city)
        self.all.select{|zoos| zoos.location == city }
    end 

end
