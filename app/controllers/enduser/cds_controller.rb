class Enduser::CdsController < ApplicationController

def index
 @cds = Cd.all
end

def show
 #CDの情報取得
 @cd = Cd.find(params[:id])
 #cart_itemsにcdを追加
 @cart = Cart_items.new
end

def new
 @cart = Cart_items.new
end

end
