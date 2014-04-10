class Product < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
                            whiny: false, 
                            :url => "/assets/products/:id/:style/:filename",
                            :path => ":rails_root/public/assets/products/:id/:style/:filename"


  validates_attachment :image, :content_type => {content_type: ["image/jpg", "image/jpeg", "image/gif", "image/png"]}, :size => { in: 0..30.kilobytes}
  validates_attachment_presence :image

  validates :name, :description, :price, :stock_quantity, :designer, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => {greater_than_or_equal_to: 0} 
  validates :stock_quantity, :numericality => {only_integer: true}
  
  belongs_to :category
  belongs_to :designer
  has_many :line_items

end
