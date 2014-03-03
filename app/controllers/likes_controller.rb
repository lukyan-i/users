class LikesController < ApplicationController
  before_filter :authenticate_user!
  def create
    @picture = Picture.find(params[:picture_id])

    @like = @picture.likes.where(user: current_user, picture_id: params[:picture_id]).first_or_create

    @like.update_attribute(:picture_like, !@like.picture_like)

    Event.create(:user_id=>current_user.id, :action_type=>"likes", :data => {:url=>request.original_url,:category_name=>Category.find(@picture.category_id).name,:picture_name=>@picture.image_file_name,:description=>'Liked picture'})

    redirect_to category_picture_path(@picture.category.name, @picture.id)
  end
end