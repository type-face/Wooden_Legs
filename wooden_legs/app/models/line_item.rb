class LineItem < ActiveRecord::Base
  validates :quantity, :price, :product, :order, :presence => true
  validates :quantity, :numericality => {only_integer: true, greater_than_or_equal_to: 0}
  validates :price, :numericality => {greater_than_or_equal_to: 0}

  belongs_to :product
  belongs_to :order
end
