class Designer < ActiveRecord::Base
  has_many :products
  has_many :line_items, through: :products
end
