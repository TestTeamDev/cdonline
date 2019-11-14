class Admin::CdsController < ApplicationController
  def index
  	@cds = Cd.all
  	@cd = Cd.new
  end

  def show
  end

  def edit
  end

  def new
    @cd = Cd.new
    @song = SongTitle.new
  end

  def update
  end

  def create
    @cd = Cd.new(cd_params)
    @cd.save
    redirect to admins_cds_path
  end

  def destroy
  end

  private
  def cd_params
    paramas.require(:cd)
  end


end
