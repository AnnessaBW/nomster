class PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @photo = Place.find(params[:place_id])
    redirect_to places_path(@place)
    
  end

 private
 
  def photo_params
    params.require(:photo).permit(:caption)
  end
end
