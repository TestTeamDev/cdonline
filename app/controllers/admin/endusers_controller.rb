class Admin::EndusersController < ApplicationController
  def index
    @users = Enduser.all
  end

  def show
    @user = Enduser.find(params[:id])
  end

  def edit
    @user = Enduser.find(params[:id])
  end

  def leave
    @user = Enduser.find(params[:id])
  end

  def order
  end

  def update
  end

  def destroy
  end
end