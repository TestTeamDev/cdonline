class Enduser::OrdersController < ApplicationController
	def index
		@orders = current_endusers_enduser.orders.all
		@enduser = Enduser.find(current_endusers_enduser.id)
	end

	def show
		@order = Order.find(params[:id])
	end

	def create
		@tax = TaxRate.find(1)
		@postage = Postage.find(1)
		order = Order.new(order_params)
		cart_items = current_endusers_enduser.cart_items.all

        #エンドユーザー外部キー情報の受け渡し
        order.enduser_id = current_endusers_enduser.id

        #order_confomationで選んだdelivey_addressの情報を受け取る

        delivery_address = DeliveryAddress.find_by(address: params[:order][:address])
        if DeliveryAddress.find_by(address: params[:order][:address]).present?
			order.first_name = delivery_address.first_name
			order.last_name = delivery_address.last_name
			order.postcode = delivery_address.postcode
			order.address = delivery_address.address
			order.postage = @postage.postage
	    end


		#購入商品情報と購入数、小計を保存
		cart_items.each do |c|
			# binding.pry
			order_product = order.order_products.build
			order_product.cd_id = c.cd.id
			order_product.order_count = c.item_count
			order_product.subtotal_price = c.cd.price * c.item_count
			order_product.order_tax_rate = @tax.tax_rate
		end

		#総計を計算
		order.total_price = 0
		cart_items.each do |c|
			order.total_price += c.cd.price * @tax.tax_rate * c.item_count
		end
		order.total_price += @postage.postage

		if order.save
			cart_items.each do |c|
              # c.destroy
            end
		  redirect_to enduser_order_confirmations_thanks_path
		else
			render 'enduser/cart_items/index'
		end

	end

	private
	def order_params
		params.require(:order).permit(:first_name, :last_name, :postcode, :address, :total_price, :postage)
	end

end
