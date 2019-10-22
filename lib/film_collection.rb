class FilmCollection
  attr_reader :collection, :directors
  
  def initialize(films_array)
    @collection = films_array
    @directors = get_directors
  end

  def get_directors
    collection.map { |film| film.director}.uniq
  end

  def show_directors
    @directors.each_with_index {|item,index| puts "#{index+1}. #{item}"}
  end

  def chosen_director(directors_number)
    directors[directors_number - 1]
  end

  def films_of_director(directors_name)
    collection.select {|film| film.director == directors_name} 
  end

  def choose_sample_film(directors_number)
    films_of_director(chosen_director(directors_number)).sample
  end  
end