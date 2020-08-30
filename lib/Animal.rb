class Animal
    @@all = []
    attr_accessor  :weight, :zoo
    attr_reader :species, :nickname

    def initialize (species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname 
        @zoo = zoo
        self.class.all << self
    end 

    def self.all 
        @@all
    end

    def self.find_by_species (species)
        @@all.select { |animal| animal.species == species}
        #Animal.find_by_species("Buffalo")
    end 

end
