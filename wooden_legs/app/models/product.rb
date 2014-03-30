class Product < ActiveRecord::Base
  belongs_to :category, :designer
  has_many :line_items
end
