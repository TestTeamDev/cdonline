class Enduser::CdsController < ApplicationController

PER = 12

def index
 @cds = Cd.page(params[:page]).per(PER)
 @cd = Cd.new
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
 #詳細ページが開かれると閲覧数のカラムに＋１
 @cd.view_number += 1
 @cd.save
end

def new
 @cart = Cart_items.new
end

private
def search_params
 params.require(:q).permit!
end

end
