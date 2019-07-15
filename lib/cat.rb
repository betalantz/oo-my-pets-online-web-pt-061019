class Cat
  attr_accessor :mood
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    self.class.all << self
    owner.cats << self
  end

  def self.all
    @@all
  end

end
