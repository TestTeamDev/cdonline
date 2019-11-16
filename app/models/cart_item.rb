class CartItem < ApplicationRecord
	belongs_to :enduser, dependent: :destroy
	belongs_to :cd, dependent: :destroy
end
