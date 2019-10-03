# Add seed data here. Seed your database with `rake db:seed`
require 'pry'
require_relative '../config/environment.rb' 
class SeedTheDb 
def self.fire 
   Dir["./db/data/*"].each  do  |songs|
      normalized = songs.gsub("./db/data/","")
      first_split = normalized.split(" - ")
 
      Artist.create(name: first_split.first) if !Artist.find_by(name: first_split.first )
     #this is the name of the artist 
  
     second_split = first_split.last.split(" [")  
     
       Song.create(name: second_split.first) if !Song.find_by(name: second_split.first) 
      # #this is the title of song
  
       Genre.create(genre: second_split.last.gsub(/\]\.mp3/,"") ) if !Genre.find_by(genre: second_split.last.gsub(/\]\.mp3/,"") )
      #this is the genre
      
      new_artist = Artist.find_by(name: first_split.first)
     # p new_artist
      new_song = Song.find_by(name: second_split.first)
     # p new_song 
      new_genre = Genre.find_by(genre: second_split.last.gsub(/\]\.mp3/,"")) 
     # p new_genre
      new_artist.songs << new_song if !new_artist.songs.include?(new_song)  && new_artist
      new_genre.songs << new_song if !new_genre.songs.include?(new_song) 
      # binding.pry
   end
 end
 end 
 
 SeedTheDb.fire