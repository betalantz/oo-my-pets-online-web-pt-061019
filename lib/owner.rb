class Owner

  attr_accessor :cats, :dogs
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    self.class.all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    dog
  end

  def walk_dogs
    @dogs.map {|dog| dog.mood = "happy"}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

end
