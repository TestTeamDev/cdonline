class Enduser::CdsController < ApplicationController

def index
 @cds = Cd.all
end

def show
 #CDの情報取得
 @cd = Cd.find(params[:id])
 #cdに紐付いた情報の取得
 @genre = @cd.genre
 @artist = @cd.artist
 @label = @cd.label
  #cart_itemsにcdを追加
  @cart = Cart_items.new
end

def new
 @cart = Cart_items.new
end

end
