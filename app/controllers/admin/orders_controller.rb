class Admin::OrdersController < ApplicationController
	before_action :authenticate_admins_admin!

	def index
		@orders = Order.page(params[:page]).per(20)
	end

	def show
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])
		if @order.update(order_params)
			flash[:success_update]  = "アップデートに成功しました"
		   redirect_to admin_orders_path
	    end
	end

	private
    def order_params
      params.require(:order).permit(:status)
    end


end
