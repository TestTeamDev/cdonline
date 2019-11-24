class Enduser::ReviewsController < ApplicationController
	before_action :authenticate_endusers_enduser!

	def create
		#controller/enduuser/cdのdef showから飛んでくる
	    @review = Review.new(review_params)
	    @cd = Cd.find(@review.cd_id)
		@reviews = @cd.reviews
	    @review.enduser_id = current_endusers_enduser.id
        if @review.save
        	flash[:create] = "レビューが追加されました"
        	#enduser/reviews/index.js.erbに飛ぶ
            render "enduser/reviews/index.js.erb"
        else
			 @discs = @cd.discs
			 #cdに紐付いた情報の取得
			 @genre = @cd.genre
			 @artist = @cd.artist
			 @label = @cd.label
			  #cart_itemsにcdを追加
			 @Cart_items = CartItem.new
			 @favorit = Favorit.new
        	render "enduser/cds/show"
        end
	end

	def destroy
#		@review = Review.find_by(cd_id: params[:id], enduser_id: current_endusers_enduser.id)
	    @review = Review.find(params[:id])
	    #if @review.enduser_id ==current_endusers_enduser.id
		@review.destroy
		#end
		redirect_to enduser_cd_path(@review.cd)
	end

	def edit
		@review = Review.find(params[:id])
	end

	def update
		@review = Review.find(params[:id])
		if @review.update(review_params)
			flash[:update] = "レビューが更新されました"
			render enduser_cd_path(@review.cd)
	    else
	    	render :edit
	    end
	end

	private
    def review_params
      params.require(:review).permit(:cd_id, :review_title, :review_body)
    end
end

