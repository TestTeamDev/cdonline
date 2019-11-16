class SongTitle < ApplicationRecord
	belongs_to :disc, dependent: :destroy
end
