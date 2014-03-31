class Designer < ActiveRecord::Base
  validates :company, :first_name, :last_name, :address, :city, :postal_code, :email, :province, :presence => true
  validates :company, :uniqueness => true

  has_many :products
  has_many :line_items, through: :products
  belongs_to :province
end
