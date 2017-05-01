class Owner
  attr_accessor :name, :fishes, :dogs, :cats, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs].each do |doggo|
      doggo.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |gato|
      gato.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |pet_animal|
        pet_animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
