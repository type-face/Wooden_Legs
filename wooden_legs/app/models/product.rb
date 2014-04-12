class Product < ActiveRecord::Base
  attr_writer :delete_image
  
  before_validation { self.image.clear if self.delete_image == '1' }

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                            whiny: false, 
                            :url => "/assets/products/:id/:style/:filename",
                            :path => ":rails_root/public/assets/products/:id/:style/:filename"


  validates_attachment :image, :content_type => {content_type: ["image/jpg", "image/jpeg", "image/gif", "image/png"]}


  validates :name, :description, :price, :stock_quantity, :designer, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => {greater_than_or_equal_to: 0} 
  validates :stock_quantity, :numericality => {only_integer: true}
  
  belongs_to :category
  belongs_to :designer
  has_many :line_items


  def delete_image
    @delete_image || false
  end

end
