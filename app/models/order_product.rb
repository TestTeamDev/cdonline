class OrderProduct < ApplicationRecord
	belongs_to :order, dependent: :destroy
	belongs_to :cd, dependent: :destroy
end
