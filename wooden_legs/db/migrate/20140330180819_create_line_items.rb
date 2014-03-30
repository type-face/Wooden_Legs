class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.references :product
      t.references :order

      t.timestamps
    end
  end
end
