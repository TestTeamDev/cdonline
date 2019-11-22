class Cd < ApplicationRecord


belongs_to :genre
belongs_to :label
belongs_to :artist
has_many :favorits
has_many :reviews
has_many :cart_items
has_many :order_products
has_many :arrival_cds
has_many :discs
accepts_nested_attributes_for :discs, reject_if: :all_blank, allow_destroy: true

attachment :image

enum type: { シングル: 0,アルバム: 1 }
enum sell_status: { 販売停止: 0, 販売中: 1 }
self.inheritance_column = :_type_disabled
acts_as_paranoid

  def stock
	ar = ArrivalCd.group(:cd_id).where(cd_id: id).sum(:arrival_count)  # id = cd.id
	odr  = OrderProduct.group(:cd_id).where(cd_id: id).sum(:order_count)
	ar[id].to_i - odr[id].to_i  #id = cd.id
  end
end
