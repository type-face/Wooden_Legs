class StoreController < ApplicationController
  before_filter :common_content, only:[:index, :filter_by_category, :search_results, :show]

  def index        
    @products = Product.all#.paginate(page: params[:page], per_page: 6)    
  end

  def show
    @product = Product.find(params[:id])
  end

  def filter_by_category
    @products = Product.where("category_id = ?", params[:id])#.paginate(page: params[:page], per_page: 6)
  end

  def search_results
    @products = Product.search(params[:search_terms], params[:search_category])#.paginate(page: params[:page], per_page: 6)
  end

  def common_content
    @categories = Category.all.order(:name)
  end

end
