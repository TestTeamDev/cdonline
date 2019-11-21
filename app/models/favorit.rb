class Favorit < ApplicationRecord
	belongs_to :enduser
	belongs_to :cd
end
