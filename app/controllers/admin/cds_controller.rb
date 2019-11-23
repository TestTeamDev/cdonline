class Admin::CdsController < ApplicationController
  before_action :authenticate_admins_admin!

  def index
  	@cds = Cd.all
  	@cd = Cd.new
    @q = Cd.ransack(params[:q])
    cds = @q.result(distinct: true)
  end

  def search
    @q = Cd.search(search_params)
    @cds = @q.result(distinct: true)
  end


  def show
    @cd = Cd.find(params[:id])
    @discs = @cd.discs
    @reviews = @cd.reviews
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
    if @cd.update(cd_params)
      flash[:create] = "商品が更新されました"
      redirect_to admin_cd_path(@cd)
    else
      render :edit
    end
  end

  def create
    @cd = Cd.new(cd_params)
    if @cd.save
      flash[:create] = "商品が追加されました"
      redirect_to admin_cds_path
    else
      render :new
    end
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
  def search_params
    params.require(:q).permit!
  end


end




