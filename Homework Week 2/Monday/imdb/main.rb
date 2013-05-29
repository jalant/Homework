require "httparty"
require 'json'
require 'PG'


conn = PG.connect(:dbname => 'movies', :host => 'localhost')

# babe = HTTParty.get('http://www.omdbapi.com/?t=Babe')
# new_babe = JSON(babe.body)

# new_movies =["Faceoff", "Pacifier", "Die Another Day", "Casino Royale", "Iron Man 3", "Iron Man 2", "Iron Man", "The Hangover", "The Hangover Part II", 
# 	"Batman"]

puts "What movie would you like to add to the database?"
movie = gets.chomp.downcase



# new_movies.each do |movie|

new_object = JSON(HTTParty.get("http://www.omdbapi.com/?t=#{movie.gsub(' ','%20')}"))
sql_command = "INSERT INTO final_movies2 (imdbid, title, year, rated, released, runtime, genre, writer, actors, imdprating, type) 
VALUES ('#{new_object["imdbID"]}', '#{new_object["Title"]}', '#{new_object["Year"]}', '#{new_object["Rated"]}', '#{new_object['Released']}', '#{new_object['Runtime']}', '#{new_object['Genre']}', '#{new_object['Writer']}', '#{new_object['Actors']}', '#{new_object['imdbRating'].to_f}', '#{new_object['Type']}' );"

conn.exec(sql_command)

# end 





conn.close