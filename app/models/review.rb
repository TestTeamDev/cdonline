class Review < ApplicationRecord
	belongs_to :enduser
	belongs_to :cd

	validates :review_title, presence: true
	validates :review_body, presence: true
end
