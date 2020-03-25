$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  director_gross_earnings = {}
  director_counter = 0 
  while director_counter < directors_database.length do
    movie_counter = 0
    
    #below might be unecessary variable, assigned for clarity in following while loop
    
    num_of_movies = directors_database[director_counter][:movies].length
    total_gross = 0
    
    while movie_counter < num_of_movies do
      movie_gross = directors_database[director_counter][:movies][movie_counter][:worldwide_gross]
      total_gross += movie_gross
      movie_counter += 1
    end
    
    #below variable also assigned for clarity
    
    director = directors_database[director_counter][:name]
    director_gross_earnings[director] = total_gross
    director_counter += 1  
  end
  director_gross_earnings
end
