class Order < ApplicationRecord
	belongs_to :enduser, dependent: :destroy
	has_many :order_products
	enum status: { 受付中: 0,配送中:1,受け取り済み:2 }
end
