class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  def index
     @categories=Category.all
  end

  def show
    @category = Category.find_by_name(params[:id])
    Event.create(:user_id=>current_user.id, :action_type=>"navigation", :data => {:url=>request.original_url,:category_name=>@category.name,:description=>'Watched category'})
    @pictures=Picture.where(category_id: @category.id).preload(:category)
    @pictures = Kaminari.paginate_array(@pictures).page(params[:page]).per(5)
  end
end
