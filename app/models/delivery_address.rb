class DeliveryAddress < ApplicationRecord
	belongs_to :enduser
	validates :address, :first_name, :last_name, :postcode, presence: true
end
