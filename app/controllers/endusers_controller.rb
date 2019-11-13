class EndusersController < ApplicationController

  before_action :authenticate_user!

  def index
  	  @users = User.all
  	  @user = current_user
  end

  def show
  	  @user = User.find(params[:id])
  end

  def edit
  end

  def leave
  end
end
