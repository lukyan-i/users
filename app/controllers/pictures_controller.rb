class PicturesController < ApplicationController
  before_filter :authenticate_user!, only: [:show]
  def index
    @picture = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    Event.create(:user_id=>current_user.id, :action_type=>"navigation", :data => {:url=>request.original_url,:category_name=>Category.find(@picture.category_id).name,:picture_name=>@picture.image_file_name, :description=>'Watched picture'})
  end

end