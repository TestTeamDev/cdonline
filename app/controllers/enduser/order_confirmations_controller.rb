class Enduser::OrderConfirmationsController < ApplicationController

	def index
		@enduser = Enduser.find(current_enduser_enduser.id)
		
	end

	def thanks
	end
end
