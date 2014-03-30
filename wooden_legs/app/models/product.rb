class Product < ActiveRecord::Base
  validates :name, :description, :price, :stock_quantity, :designer, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => {greater_than_or_equal_to: 0} 
  validates :stock_quantity, :numericality => {only_integer: true}
  

  belongs_to :category
  belongs_to :designer
  has_many :line_items
end
