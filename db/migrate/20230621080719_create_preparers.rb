class CreatePreparers < ActiveRecord::Migration[6.0]
  def change
    create_table :preparers do |t|
      t.string  :my_submitter, null: false
      t.string  :my_director, null: false
      t.string  :my_company, null: false
      t.string  :my_Address, null: false
      t.string  :my_phone_number, null: false
      t.string  :my_fax_number, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
