class Enduser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  paginates_per 30
  acts_as_paranoid

  has_many :delivery_addresses
  has_many :reviews
  has_many :favorits
  has_many :cart_items
  has_many :orders

end
