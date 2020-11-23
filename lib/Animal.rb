class Animal
  attr_accessor :species, :weight, :nickname, :zoo


  @@all = []
  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname 
    self.class.all << self
  end

  def self.all
    @@all
  end

  def zoo
    self.zoo
  end

  def find_by_species(specific_species)
    Animal.all.map {|animal| animal.species == specific_species}
  end
    


end
