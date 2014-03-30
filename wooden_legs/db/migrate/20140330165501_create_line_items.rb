class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :price
      t.reference :product_id
      t.reference :order_id

      t.timestamps
    end
  end
end
