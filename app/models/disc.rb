class Disc < ApplicationRecord
	belongs_to :cd, dependent: :destroy
	has_many :song_titles
end
