class Item < ApplicationRecord
  belongs_to :preparer
  belongs_to :customer

  validates :item_name, presence: true
  validates :unit_price, presence: true
  validates :man_hours, presence: true
  validates :quantity, presence: true
  validates :man_hours_unit_prise, presence: true
  validates :amount_total, presence: true
end
