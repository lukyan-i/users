class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
     @category=Category.all
  end

  def show
    @category = Category.find_by_name(params[:id])
  end


end
