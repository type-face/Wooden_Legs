class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.int :status
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.decimal :hst_rate
      t.reference :customer_id

      t.timestamps
    end
  end
end
