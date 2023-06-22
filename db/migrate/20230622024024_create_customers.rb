class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string  :cust_contact, null: false
      t.string  :cust_director, null: false
      t.string  :cust_company, null: false
      t.string  :cust_Address, null: false
      t.string  :cust_phone_number, null: false
      t.string  :cust_fax_number, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
