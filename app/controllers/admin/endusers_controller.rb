class Admin::EndusersController < ApplicationController
def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def leave
    @user = User.find(params[:id])
  end

  def order
  end

  def update
  end

  def destroy
  end
end