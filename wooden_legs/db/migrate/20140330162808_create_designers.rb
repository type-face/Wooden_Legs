class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :company
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :email
      t.string :phone
      t.reference :province_id

      t.timestamps
    end
  end
end
