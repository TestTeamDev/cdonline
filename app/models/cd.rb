class Cd < ApplicationRecord


belongs_to :genres, dependent: :destroy
belongs_to :label, dependent: :destroy
belongs_to :artists, dependent: :destroy

	 attachment :image


end
