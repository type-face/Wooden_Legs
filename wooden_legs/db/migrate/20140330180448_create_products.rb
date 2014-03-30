class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 10, scale: 2
      t.integer :stock_quantity
      t.string :image_src
      t.references :category
      t.references :designer

      t.timestamps
    end
  end
end
