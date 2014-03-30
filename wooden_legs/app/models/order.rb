class Order < ActiveRecord::Base
  belongs_to :customer, :order_status
  has_many :line_items
  has_many :products, through: :line_items
end
