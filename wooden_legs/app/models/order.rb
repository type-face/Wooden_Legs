class Order < ActiveRecord::Base
  validates :order_status, :customer, :presence => true


  belongs_to :customer
  belongs_to :order_status
  has_many :line_items
  has_many :products, through: :line_items
end
