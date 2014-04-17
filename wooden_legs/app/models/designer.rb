class Designer < ActiveRecord::Base
  validates :company, :website, :presence => true
  validates :company, :uniqueness => true
 # validates :email, :format => {with: /@/, message: "Please enter a valid email address. e.g. sample@domain.com"}
 # validates :phone, :format => {with: /\d{3}-\d{3}-\d{4}/, message: "Please enter a valid phone number with area code.  e.g. 204-555-5555"}


  has_many :products
  has_many :line_items, through: :products
  belongs_to :province

  def display_name
    company
  end

protected
  def designer_params
    params.require(:company, :first_name, :last_name, :address, :city, :postal_code, :email, :province).permit(:phone)
  end

end
