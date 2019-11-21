class Order < ApplicationRecord
	belongs_to :enduser
	has_many :order_products
	enum status: { 受付中: 0,配送中:1,受け取り済み:2 }
	validates :address, :first_name, :last_name, :postcode, :address, :total_price, :postage, presence: true
end
