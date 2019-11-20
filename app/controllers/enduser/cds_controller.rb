class Enduser::CdsController < ApplicationController

def index
 @cds = Cd.all
 @cd = Cd.new
 @q = Cd.ransack(params[:q])
 cds = @q.result(distinct: true)
end


def show
 #CDの情報取得
 @cd = Cd.find(params[:id])
 #cdに紐付いた情報の取得
 @genre = @cd.genre
 @artist = @cd.artist
 @label = @cd.label
  #cart_itemsにcdを追加
  @Cart_items = CartItem.new
end

def new
 @cart = Cart_items.new
end

private
def search_params
 params.require(:q).permit!
end

end
