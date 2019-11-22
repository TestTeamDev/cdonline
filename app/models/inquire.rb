class Inquire < ApplicationRecord
  validates :mail, presence: true
  validates :title, presence: true
end
