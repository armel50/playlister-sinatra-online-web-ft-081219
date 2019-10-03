class GenresController < ApplicationController
   get '/genres' do 
     @genres=Genre.all
     erb :"genre/index"
  end
  get '/genres/new' do 
  end
  get '/genres/:slug' do 
    @genre = Genre.find(params[:slug])
    erb :"genre/show"
  end 
  get '/genres/:slug/edit' do 
  end
end