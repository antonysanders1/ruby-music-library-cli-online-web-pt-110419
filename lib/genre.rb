class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(genre)
    @name = genre
    save
  end 
  
  def self.all
    @@all
  end 
  
  def self.destroy_all
    @@all.clear
  end 
  
  def save
    @@all << self 
  end  
  
  def self.create(genre_name)
    
    genre = Genre.new(genre_name)
    genre.save
    genre
    
  end 
  
  
end 