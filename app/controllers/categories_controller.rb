class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
     @category=Category.all
  end

  def show
    @category = Category.find_by_name(params[:id])
    Event.create(:user_id=>current_user.id, :action_type=>"navigation", :data => {:url=>request.original_url,:category_name=>@category.name,:description=>'Watch category'})
  end


end
