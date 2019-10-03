class ArtistsController < ApplicationController
   get '/artists' do 
     @artists = Artist.all
     erb :"artist/index"
  end
  get '/artists/new' do 
  end
  get '/artists/:slug' do 
  end 
  get '/artists/:slug/edit' do 
  end
end
