class Disc < ApplicationRecord
	belongs_to :cd, dependent: :destroy
	has_many :song_titles
	accepts_nested_attributes_for :song_titles, reject_if: :all_blank, allow_destroy: true
end
