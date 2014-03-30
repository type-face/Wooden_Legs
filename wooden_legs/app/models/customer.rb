class Customer < ActiveRecord::Base

  validates :first_name, :last_name, :email, :presence => true
  validates email, :uniqueness => true

  belongs_to :province
  has_many :orders
end
