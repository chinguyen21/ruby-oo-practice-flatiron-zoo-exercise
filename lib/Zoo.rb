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
    Animal.all.select {|animal| animal.zoo == self}
  end

  def animal_species
    self.animals.map {|animal| animal.species}.uniq
  end

  def find_by_species(specific_species)
    self.animals.select {|animal| animal.species == specific_species}
  end

  def animal_nicknames
    self.animals.map {|animal| animal.nickname }
  end

  def find_by_location(specific_location)
    Zoo.all.select {|zoo| zoo.location == specific_location}
  end

end
