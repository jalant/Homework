class Shelter
  attr_accessor :clients, :animals, :avail_animals

  def initialize(clients, animals, avail_animals)
    @clients = clients
    @animals = animals
    @avail_animals = avail_animals
  end


  def listClients
    clients.each do |client|
      puts "Name: #{client.name}"
      puts "Age: #{client.age}"
      puts "Gender: #{client.gender}"
      puts "Number of children: #{client.num_kids}"
      puts "Number of pets: #{client.num_pets}"
    end
  end

  def list_avail_animals
   
    animals.each do |animal|
      if animal.available == true
        avail_animals.push(animal)
      end
    end
    avail_animals.each do |animal|
      puts "Name: #{animal.name}"
      puts "Age: #{animal.age}"
      puts "Gender: #{animal.gender}"
      puts "Breed: #{animal.breed}"
      puts "Favorite toy: #{animal.fav_toy}"
    end
  end

  def list_all_animals
    puts "here are all animals: "
    animals.each do |animal|
      puts "Name: #{animal.name}"
      puts "Age: #{animal.age}"
      puts "Gender: #{animal.gender}"
      puts "Breed: #{animal.breed}"
      puts "Favorite toy: #{animal.fav_toy}"
    end
  end
  def receive(received_animal)
    animals.push(received_animal)
  end

  def adopt(adopt_name)
    animals.each do |animal|
      if adopt_name == animal.name
        animal.available = false
      else
        puts "The animal is not in our shelter :("
      end
    end

  end
end
