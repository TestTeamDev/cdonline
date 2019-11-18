class Enduser::CartItemsController < ApplicationController

  def index
    @cds = current_enduser.cart_items.all
  end

  def create
    @cd = CD.find(params[:id])
    @cart = Cart_items.new
    @cart.enduser_id = current_enduser.id
    @cart.cd_id = @cd.id
    if @cart.save!
      redirect_to enduser_order_path
    end
  end

  def destroy
  	@cd = Cd.find(params[:id])
  	@cd.destroy
  	redirect_to enduser_cart_items
  end

  def update
  	@cart = Cart_items.find
  	@cart.update
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:end_user_id,:cd_id,:item_count)
  end

end
