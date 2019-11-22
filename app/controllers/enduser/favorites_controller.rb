class Enduser::FavoritesController < ApplicationController

  def create
    @favorit = Favorit.create( enduser_id:current_endusers_enduser.id,  cd_id: params[:cd_id])
    #@favorit.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorit = Favorit.find_by(cd_id: params[:cd_id], enduser_id: current_endusers_enduser.id)
    @favorit.destroy
    redirect_back(fallback_location: root_path)
  end
end
