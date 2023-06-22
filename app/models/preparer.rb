class Preparer < ApplicationRecord
  belongs_to :user

  validates :my_submitter, presence: true
  validates :my_director, presence: true
  validates :my_company, presence: true
  validates :my_Address, presence: true
  validates :my_phone_number, format: { with: /\A\d{10,11}\z/ }
  validates :cust_fax_number, format: { with: /\A\d{10,11}\z/ }
end
