class Enduser::CartItemsController < ApplicationController

  def index
    @user = current_endusers_enduser
    @cart_items = @user.cart_items.all
  end

  def create
  @cd = Cd.find(params[:id])
  @cart = CartItem.new
  @cart.enduser_id = current_endusers_enduser.id
  @cart.cd_id = @cd.id
    if @cart.save!
       redirect_to enduser_cart_items_path
    end
  end

  def destroy
    cart_item = CartItem.find(:params[:id])
    cart_item.destroy
  	redirect_to enduser_cart_items_path
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
