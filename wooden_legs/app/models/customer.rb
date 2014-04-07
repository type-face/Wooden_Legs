class Customer < ActiveRecord::Base

  validates :first_name, :last_name, :email, :presence => true
  validates :email, :uniqueness => true
  validates :email, :format => {with: /@/, message: "Please enter a valid email address. e.g. sample@domain.com"}
  validates :phone, :format => {with: /\d{3}-\d{3}-\d{4}/, message: "Please enter a valid phone number with area code.  e.g. 204-555-5555"}
  validates :first_name, :last_name, :length => { maximum: 50}
  #validates :postal_code, :format => { with: [ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1}[ -]?\d{1}[A-Z]{1}\d{1} }

  belongs_to :province
  has_many :orders
end
