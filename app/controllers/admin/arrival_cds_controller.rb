class Admin::ArrivalCdsController < ApplicationController

	def new
		@arrival_cd = ArrivalCd.new
	end

	def index
		@arrival_cds = ArrivalCd.page(params[:page]).reverse_order
	end

	def create
		@arrival_cd = ArrivalCd.new(arrival_cd_params)
		@arrival_cd.save
		redirect_to admin_arrival_cds_path
	end

	private

	def arrival_cd_params
      params.require(:arrival_cd).permit(:id, :cd_id, :arrival_count,:arrival_date)
    end
end
