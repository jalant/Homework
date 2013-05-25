require_relative 'Shelter.rb'
require_relative 'Client.rb'
require_relative 'Animal.rb'


  client_1 = Client.new("Jimmy", "35", "Male", 0, 2)
  client_2 = Client.new("Tanay", "53", "Male", 2, 1)
  client_3 = Client.new("David", "45", "Male", 3, 0)
  client_4 = Client.new("Remy", "62", "Female", 0, 2)

  pet_1 = Animal.new("Tommy", "7", "Male", "Pitbull", "Ball", true)
  pet_2 = Animal.new("Bobby", "3", "Female", "Dalmation", "stuffed octopus", false)
  pet_3 = Animal.new("James", "5", "Male", "Poodle", "Squeak-toy", true)
  pet_4 = Animal.new("Ruff", "1", "Female", "Rainbow", "Bone", false)

  shelter = Shelter.new([client_1,client_2,client_3,client_4],[pet_1,pet_2,pet_3,pet_4], [])

  puts "Thank you! what would you like to do today? (Please enter the corresponding number!"
  puts "(1) Adopt a New Animal"
  puts "(2) Donate an Animal"
  puts "(3) List all Animals in the shelter"
  puts "(4) List all your Clients"
  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "here are all available animals:"
    shelter.list_avail_animals

    puts "Please enter the name of the animal you would like to adopt: "
    adopt_name = gets.chomp.capitalize
    shelter.adopt(adopt_name)

  when 2
    puts "Tell me about the animal you'd like to put up for adoption: "
    print "Name: "
    animal_name = gets.chomp
    print "Age: "
    animal_age = gets.chomp
    print "Gender: "
    animal_gender = gets.chomp
    print "Breed: "
    breed = gets.chomp
    print "Favorite toy:"
    fav_toy = gets.chomp

    test_animal = (Animal.new(animal_name, animal_age, animal_gender, breed, fav_toy, true))
    shelter.receive(test_animal)
    puts 'Thank you for your donation'
    shelter.list_avail_animals
  when 3
    shelter.list_all_animals

  when 4
    puts "here is a list of all of our clients: "
    shelter.listClients
  end

