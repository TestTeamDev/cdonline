class Admin::CdsController < ApplicationController
  def index
  	@cds = Cd.all
  	@cd = Cd.new
  end

  def show
    @cd = Cd.find(params[:id])
    @discs = @cd.discs
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def new
    @cd = Cd.new
    @disc = @cd.discs.build
    @disc.song_titles.build
  end

  def update
    @cd = Cd.find(params[:id])
    @cd.update(cd_params)
    redirect_to admin_cd_path(@cd)
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
    params.require(:cd).permit(:title, :artist_id, :image, :price, :release_date, :label_id, :genre_id, :type, discs_attributes: [:id, :disc_number, :_destroy, song_titles_attributes: [:id, :song, :_destroy]])
  end


end

