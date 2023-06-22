class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :item_name, null: false
      t.string  :unit_price, null: false
      t.string  :man_hours, null: false
      t.string  :quantity, null: false
      t.string  :man_hours_unit_prise, null: false
      t.string  :amount_total, null: false
      t.references :preparer, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
