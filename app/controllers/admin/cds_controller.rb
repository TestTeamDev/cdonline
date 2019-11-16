class Admin::CdsController < ApplicationController
  def index
  	@cds = Cd.all
  	@cd = Cd.new
  end

  def show
    @cd = Cd.find(params[:id])
    @cds = Cd.new
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def new
    @cd = Cd.new
    @song = SongTitle.new
  end

  def update
    @cd = Cd.find(params[:id])
    @cd.update(cd_params)
    redirect_to admin_cds_path
  end

  def create
    @cd = Cd.new(cd_params)
    @cd.save
    redirect_to admin_cds_path
  end

  def destroy
    @cd = Cd.find(params[:id])
    @cd.destroy
    redirect_to admin_cds_path
  end

  private
  def cd_params
    params.require(:cd).permit(:title, :artist_id, :image, :price, :release_date, :label_id, :genre_id, :type, :song)
  end


end
