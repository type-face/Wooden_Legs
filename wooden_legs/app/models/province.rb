class Province < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
end
