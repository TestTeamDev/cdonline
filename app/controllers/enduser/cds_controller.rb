class Enduser::CdsController < ApplicationController

PER = 12

def index
 @cds = Cd.page(params[:page]).per(PER)
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
end

def new
 @cart = Cart_items.new
end

end
