class Enduser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :reading_first_name, presence: true
  validates :reading_last_name, presence: true
  validates :postcode, presence: true
  validates :postcode, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true



  paginates_per 30
  acts_as_paranoid

  has_many :delivery_addresses
  has_many :reviews
  has_many :favorits
  has_many :cart_items
  has_many :orders

  def already_favorited?(cd)
    self.favorits.exists?(cd_id: cd.id)
  end

end
