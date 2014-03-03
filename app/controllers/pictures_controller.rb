class PicturesController < ApplicationController
  before_filter :authenticate_user!, only: [:show]
  def index
    @picture = Picture.all.preload(:category)
  end

  def show
    @picture = Picture.find(params[:id])
    @comments=@picture.comments.preload(:user)
    Event.create(:user_id=>current_user.id, :action_type=>"navigation", :data => {:url=>request.original_url,:category_name=>Category.find(@picture.category_id).name,:picture_name=>@picture.image_file_name, :description=>'Watched picture'})
    @like_counter = @picture.likes.where(picture_like: true).count
    @seach_user_like = @picture.likes.where(:user_id=>current_user.id).first
  end

end