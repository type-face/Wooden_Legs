class AddPhoneToDesigner < ActiveRecord::Migration
  def change
    add_column :designers, :phone, :string
  end
end
