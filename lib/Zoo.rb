class Zoo

    attr_reader :name, :location

    @@all = []

    def initialize (name, location)
        @name = name
        @location = location

        self.class.all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|a| a.zoo == self}
    end  

    def animal_species
        (self.animals.collect {|a| a.species}).uniq
    end
        

    def find_by_species(species)
        self.animals.select {|a| a.species == species}
    end 

    def animal_nicknames
        self.animals.collect {|a| a.nickname}
    end 

    def self.find_by_location(location)
        self.all.select { |zoo| zoo.location == location}
    end
end

