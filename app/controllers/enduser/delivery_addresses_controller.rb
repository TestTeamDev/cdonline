class Enduser::DeliveryAddressesController < ApplicationController
	before_action :authenticate_endusers_enduser!

	def new
		@delivery_address = DeliveryAddress.new
	end

	def create
		@delivery_address = DeliveryAddress.new(delivery_address_params)
		@delivery_address.enduser_id =  current_endusers_enduser.id
		if @delivery_address.save
		  redirect_to enduser_enduser_path(current_endusers_enduser.id)
		else
			render 'new'
		end
	end

	def destroy
		delivery_address = DeliveryAddress.find(params[:id])
        delivery_address.destroy
        redirect_to enduser_enduser_path(current_endusers_enduser.id)
	end

	private

    def delivery_address_params
      params.require(:delivery_address).permit(:enduser_id, :postcode, :address, :first_name, :last_name)
    end
end
