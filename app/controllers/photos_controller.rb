class PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(comment_params.merge)
    redirect_to places_path(@place)
    
  end

 private
 
  def photo_params
    params.require(:photo).permit(:caption)
  end
end
