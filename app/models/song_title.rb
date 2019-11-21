class SongTitle < ApplicationRecord
	belongs_to :disc

	validates :song, presence: true
end
