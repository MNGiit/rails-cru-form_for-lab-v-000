class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.new(artist_params)
    @artist.save
    
    redirect_to artist_path(@artist)
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  private
  
  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
  #def school_class_params # (*args)
  #  params.require(:school_class).permit(:title, :room_number)
  #end
end
