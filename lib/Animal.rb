class Animal

    attr_accessor :zoo, :weight
    attr_reader :species, :nickname

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo

        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def self.find_by_species(species)
        self.all.select{|animals| animals.species == species}
    end 


end
