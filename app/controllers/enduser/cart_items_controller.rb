class Enduser::CartItemsController < ApplicationController
  before_action :authenticate_endusers_enduser!

  def index
    #金額表示関係
    @tax = TaxRate.find(1)
    @postage = Postage.find(1)
    #カート基本情報
    @user = current_endusers_enduser
    @cart_items = @user.cart_items.all
  end

  def create
    @cd = Cd.find(params[:id])
    @cart = CartItem.new
    @cart.enduser_id = current_endusers_enduser.id
    @cart.cd_id = @cd.id
    @cart.save
    redirect_to enduser_cart_items_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to enduser_cart_items_path
　end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to enduser_cart_items_path
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:enduser_id,:cd_id,:item_count)
  end
end
