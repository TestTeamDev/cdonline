class Admin::InquiresController < ApplicationController
	before_action :authenticate_admins_admin!

	def index
		@inquires = Inquire.all
	end

	def show
		@inquire = Inquire.find(params[:id])
	end

	def update
		@inquire = Inquire.find(params[:id])
		@inquire.update(inquire_params)
		redirect_to admin_inquires_path
	end



	private
	def inquire_params
		params.require(:inquire).permit(:re_title, :re_body)
	end


end
