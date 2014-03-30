class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :pst_rate, precision: 10, scale: 2
      t.decimal :gst_rate, precision: 10, scale: 2
      t.decimal :hst_rate, precision: 10, scale: 2
      t.reference :status
      t.reference :customer

      t.timestamps
    end
  end
end
