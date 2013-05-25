class Animal
  attr_accessor :name, :age, :gender, :breed, :fav_toy, :available

  def initialize(name, age, gender, breed, fav_toy, available)
    @name = name
    @age = age
    @gender = gender
    @breed = breed
    @fav_toy = fav_toy
    @available = available
  end
end