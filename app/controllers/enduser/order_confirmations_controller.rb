class Enduser::OrderConfirmationsController < ApplicationController
	before_action :authenticate_endusers_enduser!

	def index
		@order = Order.new
		@cart_items = current_endusers_enduser.cart_items.all
		@tax = TaxRate.find(1)
		@postage = Postage.find(1)
	end

	def thanks
	end
end
