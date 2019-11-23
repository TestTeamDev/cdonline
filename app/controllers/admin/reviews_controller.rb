class Admin::ReviewsController < ApplicationController


    def edit
    	@review = Review.find(params[:id])
    end

    def update
    	@review = Review.find(params[:id])
		if @review.update(review_params)
			flash[:update] = "レビューが更新されました"
			redirect_to admin_cd_path(@review.cd)
	    else
	    	render :edit
	    end
    end

    def destroy
    	@review = Review.find(params[:id])
    	@review.destroy
    	redirect_to admin_cd_path(@review.cd)
    end

    private
    def review_params
      params.require(:review).permit(:cd_id, :review_title, :review_body)
    end

end

