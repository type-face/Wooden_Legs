class RemoveImageSrcFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image_src, :string
  end
end
