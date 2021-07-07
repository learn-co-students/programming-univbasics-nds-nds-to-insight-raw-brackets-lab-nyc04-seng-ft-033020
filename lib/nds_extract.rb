$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  directors_gross = {}
  x = 0

  while x < nds.length do 
    director_name = nds[x][:name]
    director_movies = nds[x][:movies]
    directors_gross[director_name] = 0
    y = 0

    while y < director_movies.length do
      movie_gross = director_movies[y][:worldwide_gross]
      directors_gross[director_name] += movie_gross
      y += 1
    end
    x += 1
  end
  directors_gross
end