class DeliveryAddress < ApplicationRecord
	belongs_to :enduser, dependent: :destroy
end
