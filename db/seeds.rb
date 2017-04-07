movies = [
  {
    "imdb_key" => 'tt0082971',
    "price" => 1295,
    "year" => 1981,
    "mpaa" => 'PG',
    "title" => 'Raiders of the Lost Ark',
    "poster" => 'raiders.jpg',
    "plot" => 'Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.'
  },
  {
    "imdb_key" => 'tt2488496',
    "price" => 4295,
    "year" => 2015,
    "mpaa" => 'PG',
    "title" => 'Star Wars: The Force Awakens',
    "poster" => 'star_wars.jpg',
    "plot" => 'Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.'
  },
  {
    "imdb_key" => 'tt0112384',
    "price" => 6295,
    "year" => 1995,
    "mpaa" => 'PG',
    "title" => 'Apollo 13',
    "poster" => 'apollo_13.jpg',
    "plot" => 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.'
  },
  {
    "imdb_key" => 'tt0162222',
    "price" => 1295,
    "year" => 2000,
    "mpaa" => 'PG-13',
    "title" => 'Cast Away',
    "poster" => 'cast_away.jpg',
    "plot" => 'A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island.'
  },
  {
    "imdb_key" => 'tt2015381',
    "price" => 3295,
    "year" => 2014,
    "mpaa" => 'PG-13',
    "title" => 'Guardians of the Galaxy',
    "poster" => 'guardians.jpg',
    "plot" => 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.'
  }
]

movies.each do |movie_data|
  m = Movie.new
  m.title = movie_data["title"]
  m.plot = movie_data["plot"]
  m.imdb_key = movie_data["imdb_key"]
  m.price = movie_data["price"]
  m.year = movie_data["year"]
  m.mpaa = movie_data["mpaa"]
  m.poster_url = movie_data["poster"]
  m.save
end

print "There are now #{Movie.count} movies in the database.\n"
