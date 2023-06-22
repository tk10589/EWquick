class Customer < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :cust_contact, presence: true
  validates :cust_director, presence: true
  validates :cust_company, presence: true
  validates :cust_Address, presence: true
  validates :cust_phone_number, format: { with: /\A\d{10,11}\z/ }
  validates :cust_fax_number, format: { with: /\A\d{10,11}\z/ }
end
