class Cd < ApplicationRecord


belongs_to :genre, dependent: :destroy
belongs_to :label, dependent: :destroy
belongs_to :artist, dependent: :destroy
has_many :favorits
has_many :reviews
has_many :cart_items
has_many :order_products
has_many :arrival_cds

attachment :image


end
