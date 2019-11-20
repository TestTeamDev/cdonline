class Enduser::DeliveryAddressesController < ApplicationController

	def new
		@delivery_address = DeliveryAddress.new
	end

	def create
		@delivery_address = DeliveryAddress.new(delivery_address_params)
		@delivery_address.enduser_id =  current_endusers_enduser.id
		@delivery_address.save
		redirect_to root_path
	end

	def destroy

	end

	private

    def delivery_address_params
      params.require(:delivery_address).permit(:enduser_id, :postcode, :address, :first_name, :last_name)
    end
end
