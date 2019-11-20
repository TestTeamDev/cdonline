class Enduser::CartItemsController < ApplicationController

  def index
    @cds = current_endusers_enduser.cart_items.all
  end

  def create
    @cd = Cd.find(params[:id])
    @cart = CartItems.new
    @cart.enduser_id = current_endusers_enduser.id
    @cart.cd_id = @cd.id
    if @cart.save!
      redirect_to enduser_order_path
    end
  end

  def destroy
  	@cart = CartItems.find(params[:id])
  	@cart.destroy
  	redirect_to enduser_cart_items
  end

  def update
  	@cart = CartItems.find
  	@cart.update
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:end_user_id,:cd_id,:item_count)
  end

end
