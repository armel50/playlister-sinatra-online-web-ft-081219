class SongsController < ApplicationController 
  get '/songs' do 
    @songs = Song.all
    erb :"song/index"
  end
  
  get '/songs/new' do 
  end
  get '/songs/:slug/edit' do 
  end
  get '/songs/:slug' do 
    p params
    @song = Song.find(params[:slug]) 
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
    erb :"song/show"
  end
end