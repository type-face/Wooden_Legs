class AddWebsiteToDesigner < ActiveRecord::Migration
  def change
    add_column :designers, :website, :string
  end
end
