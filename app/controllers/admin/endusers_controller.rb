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
    @user = Enduser.find(params[:id])
    @orders = @user.orders
  end

  def update
    @user = Enduser.find(params[:id])
    if @user.update(enduser_params)
         flash[:notice] = "プロフィールを更新しました"
         redirect_to admin_enduser_path(@user.id)
      else
         flash[:notice] = "error"
         redirect_to edit_admin_enduser_path(@user.id)
      end
  end

  def destroy
    @user = Enduser.find_by(id:params[:id])
    @user.destroy
      redirect_to admin_endusers_path
  end

  private
    def enduser_params
      params.require(:enduser).permit(:first_name,:last_name,:reading_first_name,:reading_last_name,:postcode,:address,:phone_number)
  end

end