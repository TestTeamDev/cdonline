class Enduser::DeliveryAddressesController < ApplicationController

	def new
		@delivery_address = DeliveryAddress.new
	end

	def create
		@delivery_address = DeliveryAddress.new(delivery_address_params)
		@delivery_address.enduser_id =  current_user.id
		@delivery_address.save
		redirect_to admin_arrival_cds_path
	end

	def destroy

	end

	private

    def deliverly_address_params
      params.require(:delivery_address).permit(:enduser_id, :postcode, :address, :name)
    end
end
