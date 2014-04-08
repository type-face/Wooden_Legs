class ChangeGstColumnNameProvinceModel < ActiveRecord::Migration
  def change
    rename_column :provinces, :get, :gst
  end
end
