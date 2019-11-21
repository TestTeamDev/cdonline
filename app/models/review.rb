class Review < ApplicationRecord
	belongs_to :enduser
	belongs_to :cd
end
