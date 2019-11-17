class Enduser::CartItemsController < ApplicationController

  def index
  	@user = current_enduser
  	@cd = Cd.find(params[:id])
  end

  def create
  	@cart = Cart_items.new
  end

  def destroy
  	@cd = Cd.find(params[:id])
  	@cd.destroy
  	redirect_to enduser_cart_items
  end

  def update
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:end_user_id,:cd_id,:item_count)
  end

end
