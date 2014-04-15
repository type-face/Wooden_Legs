class StoreController < ApplicationController


  def index    
    @categories = Category.all
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def filter_by_category
    @categories = Category.all
    @products = Product.where("category_id = ?", params[:id])
  end

  def search
    #
  end

  def search_results
    @products = Product.search(params[:search_terms])
  end

end
