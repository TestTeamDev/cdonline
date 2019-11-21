class ArrivalCd < ApplicationRecord
	belongs_to :cd
	validates :arrival_count, :arrival_date, presence: true
end
