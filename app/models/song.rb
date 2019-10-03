class Song < ActiveRecord::Base 
  belongs_to :artist 
  belongs_to :genre
  
  def song_genres
    # genre.songs  << self 
     self
  end
  
  def create(genre: )
    genre.songs << self
  end
  
  def slug 
    self.id
  end
end