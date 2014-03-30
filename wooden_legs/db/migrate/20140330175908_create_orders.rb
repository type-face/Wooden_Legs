class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :pst_rate, precision: 5, scale: 2
      t.decimal :gst_rate, precision: 5, scale: 2
      t.decimal :hst_rate, precision: 5, scale: 2
      t.reference :order_status
      t.reference :customer

      t.timestamps
    end
  end
end
