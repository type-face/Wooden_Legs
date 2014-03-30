class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :designer
  has_many :line_items
end
