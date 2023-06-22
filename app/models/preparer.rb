class Preparer < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :my_submitter, presence: true
  validates :my_director, presence: true
  validates :my_company, presence: true
  validates :my_Address, presence: true
  validates :my_phone_number, format: { with: /\A\d{10,11}\z/ }
  validates :my_fax_number, format: { with: /\A\d{10,11}\z/ }
end
