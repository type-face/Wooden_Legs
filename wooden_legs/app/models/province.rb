class Province < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true



  protected
  def province_params
    params.require(:name).permit(:pst, :gst, :hst)
  end


end
