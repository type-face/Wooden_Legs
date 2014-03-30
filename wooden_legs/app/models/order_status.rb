class OrderStatus < ActiveRecord::Base
  validates name:, :uniqueness => true

  has_many :orders
end
