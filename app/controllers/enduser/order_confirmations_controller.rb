class Enduser::OrderConfirmationsController < ApplicationController

	def index
		@order = Order.new
		pp current_endusers_enduser
		pp @order
		@cart_items = current_endusers_enduser.cart_items.all
		@tax = TaxRate.find(1)
		@postage = Postage.find(1)
	end

	def thanks
	end
end
