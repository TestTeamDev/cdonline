class Enduser::CdsController < ApplicationController

PER = 12

def index
 @cds = Cd.page(params[:page]).per(PER)
 @q = Cd.ransack(params[:q])
 cds = @q.result(distinct: true)
end

def search
  @q = Cd.search(search_params)
  @cds = @q.result(distinct: true)
end

def show
 #CDの情報取得
 @cd = Cd.find(params[:id])
 @discs = @cd.discs
 #cdに紐付いた情報の取得
 @genre = @cd.genre
 @artist = @cd.artist
 @label = @cd.label
  #cart_itemsにcdを追加
 @Cart_items = CartItem.new
 @favorit = Favorit.new
 @review = Review.new
 @reviews = @cd.reviews
end

def new
 @cart = Cart_items.new
end

private
def search_params
 params.require(:q).permit!
end

end
