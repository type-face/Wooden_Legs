class Customer < ActiveRecord::
  belongs_to :province
  has_many :orders
end
