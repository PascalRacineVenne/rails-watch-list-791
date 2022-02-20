require "open-uri"
require "json"

url = "http://tmdb.lewagon.com/movie/top_rated"

movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)
movies['results'].each do |movie|
  puts "+++++++++++++++++++"
  puts movie["title"]
  puts movie["overview"]
  puts movie["vote_average"]
  puts movie["poster_path"]
  puts "+++++++++++++++++++"
end
