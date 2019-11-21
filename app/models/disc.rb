class Disc < ApplicationRecord
	belongs_to :cd
	has_many :song_titles
	accepts_nested_attributes_for :song_titles, reject_if: :all_blank, allow_destroy: true

	validates :disc_number, presence: true
end
