$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  totals = {}
  dir_counter = 0;

  while dir_counter < nds.size do
    name = nds[dir_counter][:name]
    totals[name] = 0

    movie_counter = 0

      while movie_counter < nds[dir_counter][:movies].size do
            gross = nds[dir_counter][:movies][movie_counter][:worldwide_gross]
            totals[name] += gross
          movie_counter += 1
      end
      dir_counter += 1
  end

  totals
end


# [{:name=>"Stephen Spielberg",
#   :movies=>
#    [{:title=>"Jaws",
#      :studio=>"Universal",
#      :worldwide_gross=>260000000,
#      :release_year=>1975},
#     {:title=>"Close Encounters of the Third Kind",
#      :studio=>"Columbia",
#      :worldwide_gross=>135189114,
#      :release_year=>1977},
#     {:title=>"Raiders of the Lost Ark",
#      :studio=>"Paramount",
#      :worldwide_gross=>248159971,
#      :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#      :studio=>"Universal",
#      :worldwide_gross=>435110554,
#      :release_year=>1982},
#     {:title=>"Schindler's List",
#      :studio=>"Universal",
#      :worldwide_gross=>96898818,
#      :release_year=>1993},
#     {:title=>"Lincoln",
#      :studio=>"Buena Vista",
#      :worldwide_gross=>182207973,
#      :release_year=>2012}]},
