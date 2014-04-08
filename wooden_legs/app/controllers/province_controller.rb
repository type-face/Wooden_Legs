class ProvinceController < ApplicationController
  def index
    @province = Province.all
  end
end
