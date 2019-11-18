class ArrivalCd < ApplicationRecord
	belongs_to :cd, dependent: :destroy
end
