class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
     @categories=Category.all
  end

  def show
    @categories = Category.find_by_name(params[:id])
    Event.create(:user_id=>current_user.id, :action_type=>"navigation", :data => {:url=>request.original_url,:category_name=>@categories.name,:description=>'Watched category'})
    @pictures=Picture.where(category_id: @categories.id)
  end


end
