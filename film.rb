class Film
  attr_reader :title, :director, :year
  def initialize(file_path)
    film_file = File.readlines(file_path)

    @title = film_file[0]
    @director = film_file[1]
    @year = film_file[2]
  end

  def to_s
    "#{@director} - #{@title} (#{@year})"
  end
end