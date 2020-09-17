class Owner
  attr_reader :name, :species
  @@all=[]

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    p "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats 
    Cat.all.filter { |cat| cat.owner == self }
  end

  def dogs
    Dog.all.filter { |dog| dog.owner == self }
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name, self)
  end

  def walk_dogs
    Dog.all.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    Cat.all.each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    Dog.all.each { |dog| dog.mood = "nervous" }
    Cat.all.each { |cat| cat.mood = "nervous" }
    Dog.all.each { |dog| dog.owner = nil }
    Cat.all.each { |cat| cat.owner = nil }
  end

  def list_pets
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end