class Admin::EndusersController < ApplicationController
  def index
    @users = Enduser.page(params[:page]).reverse_order
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
    @user = Enduser.fund(params[:id])
    @orders = @user.orders
  end

  def update
    @user = Enduser.find(params[:id])
  end

  def destroy
  end

  private
    def user_params
      params.require(:enduser)
  end

end