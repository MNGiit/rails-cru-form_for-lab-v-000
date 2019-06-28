class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    @genre.save
    
    redirect_to genre_path
  end
  
  private
  
  def genre_params
    
  end
  
end
