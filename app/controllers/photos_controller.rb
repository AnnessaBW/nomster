class PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @photo = Place.find(params[place_id])
    @place.comments.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
     private
  end

  def photo_params
    params.require(:photo).permit(:caption)
  end
end
