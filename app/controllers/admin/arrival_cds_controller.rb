class Admin::ArrivalCdsController < ApplicationController

	def new
		@arrival_cd = ArrivalCd.new
	end

	def index
		@arrival_cds = ArrivalCd.page(params[:page]).per(20)
	end

	def create
		@arrival_cd = ArrivalCd.new(arrival_cd_params)
		if @arrival_cd.save
		   cd = @arrival_cd.cd
		   cd.sell_status = 1
		   cd.save
		   redirect_to admin_arrival_cds_path
	    else
	    	render 'new'
	    end
	end

	private

	def arrival_cd_params
      params.require(:arrival_cd).permit(:id, :cd_id, :arrival_count,:arrival_date)
    end
end
