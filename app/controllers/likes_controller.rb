class LikesController < ApplicationController
  before_filter :authenticate_user!
  def create
    @picture = Picture.find(params[:picture_id])

    @like = @picture.likes.where(user: current_user, picture_id: params[:picture_id]).first_or_create

    @like.update_attribute(:like, !@like.like)

    redirect_to category_picture_path(@picture.category.name, @picture.id)
  end
end