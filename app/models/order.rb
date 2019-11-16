class Order < ApplicationRecord
	belongs_to :enduser, dependent: :destroy
	has_many :order_products
end
