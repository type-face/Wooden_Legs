class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock_quantity
      t.string :image_src
      t.reference :category_id
      t.reference :designer_id

      t.timestamps
    end
  end
end
