require_relative "lib/film.rb"
require_relative "lib/film_collection.rb"

system 'cls'
current_path = File.dirname(__FILE__)

files_array = Dir.glob("#{current_path}/data/*.txt")

films = files_array.map {|file| Film.new(file)}

film_collection = FilmCollection.new(films)

chosen_directors_number = nil
until (1..film_collection.directors.size).include?(chosen_directors_number)
  puts "Фильмы какого режиссера Вы хотите посмотреть?"
  film_collection.show_directors
  chosen_directors_number = STDIN.gets.to_i
end

chosen_film = film_collection.choose_sample_film(chosen_directors_number)

puts "И сегодня вечером рекомендую посмотреть:\n #{chosen_film}"

