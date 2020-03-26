$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

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
result = {}
i = 0
while i < nds.length do
  name = nds[i][:name] #iterates over the names in directors_database
  j = 0 #counter for next while loop
movies = nds[i][:movies]
    gross = 0
    while j < movies.length do
      gross += movies[j][:worldwide_gross]
      j += 1
    end
    result[name] = gross
    i += 1
  end
result
end
