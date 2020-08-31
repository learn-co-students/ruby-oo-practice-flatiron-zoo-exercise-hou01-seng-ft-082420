class Zoo
    attr_accessor :name, :location

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
        Animal.all.select do |animals|
            animals.zoo == self.name
        end
    end

     def animal_species
        animals.collect {|s| s.species}.uniq
     end

    def find_by_species(species)
        animals.select do |animals|
            animals.species == species
        end

    end

    def find_by_nickname
        self.animals.collect do |animals|
            animals.nickname 
        end
    end

    def self.find_by_location(zoo_location)
        Zoo.all.select do |zoo|
            zoo.location == zoo_location
        end
    end



    

end
