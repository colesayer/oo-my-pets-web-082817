require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species


  @@owners = []
  @@count = 0

  def initialize(name)
    @species = species
    @species = 'human'
    @name = name
    @@owners << self
    @@count += 1
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end

  def self.all
    @@owners
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@owners = []
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

# def buy_animal(animal, name)
#   new_animal = animal.new(name)
#   if animal == Dog
#     key = :dogs
#   elsif animal == cat
#     key = :cats
#   else
#     key = :fishes
#   @pets[key] << new_animal
# end



  def walk_dogs
    @pets[:dogs].each do |traits|
      traits.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |traits|
      traits.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |traits|
      traits.mood = 'happy'
    end
  end

  def sell_pets
    @pets.values.each do |array|
      array.each do |traits|
       traits.mood = 'nervous'
     end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
