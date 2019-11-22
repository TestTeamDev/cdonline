class Favorit < ApplicationRecord
	belongs_to :enduser
	belongs_to :cd
	validates_uniqueness_of :cd_id, scope: :enduser_id
end
