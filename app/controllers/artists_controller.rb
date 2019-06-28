class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end
  
  def create
    @artist = Artist.new
  end
end
