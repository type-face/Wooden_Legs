class LineItem < ActiveRecord::Base
   belongs_to :product, :order
end
