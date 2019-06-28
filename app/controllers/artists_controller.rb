class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
  end
  
  private
  
  def artist_params
    
  end
end
