CREATE TABLE final_movies2
(
id SERIAL8 PRIMARY KEY,	
imdbid varchar(25) NOT NULL,
title VARCHAR(25) NOT NULL,
year VARCHAR(5) NOT NULL, 
rated varchar(5) NOT NULL, 
released varchar(50) NOT NULL, 
runtime varchar(50) NOT NULL, 
genre varchar(50) NOT NULL,
writer varchar(50) NOT NULL,
actors varchar(100) NOT NULL,
imdprating float4 NOT NULL,
type VARCHAR(25) NOT NULL

);

 {"Title"=>"Babe",
 "Year"=>"1995",
 "Rated"=>"G",
 "Released"=>"04 Aug 1995",
 "Runtime"=>"1 h 29 min",
 "Genre"=>"Adventure, Family, Fantasy",
 "Director"=>"Chris Noonan",
 "Writer"=>"Dick King-Smith, George Miller",
 "Actors"=>
  "James Cromwell, Magda Szubanski, Christine Cavanaugh, Miriam Margolyes",
 "Plot"=>
  "Babe, a pig raised by sheepdogs, learns to herd sheep with a little help from Farmer Hoggett.",
 "Poster"=>
  "http://ia.media-imdb.com/images/M/MV5BMTIwNzY2OTIzN15BMl5BanBnXkFtZTcwNjcxODAzMQ@@._V1_SX300.jpg",
 "imdbRating"=>"6.9",
 "imdbVotes"=>"65,132",
 "imdbID"=>"tt0112431",
 "Type"=>"movie",
 "Response"=>"True"}