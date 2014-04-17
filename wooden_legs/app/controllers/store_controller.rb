class StoreController < ApplicationController
  before_filter :common_content

  def index        
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def filter_by_category
    @products = Product.where("category_id = ?", params[:id])
  end

  def search_results
    @products = Product.search(params[:search_terms], params[:search_category])
  end

  def common_content
    @categories = Category.all.order(:name)
  end


end
