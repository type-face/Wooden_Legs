class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.reference :product
      t.reference :order

      t.timestamps
    end
  end
end
