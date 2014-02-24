class CommentsController < ApplicationController
before_filter :authenticate_user!
def create
  @picture = Picture.find(params[:picture_id])
  @comment = Comment.create(comment_params.merge(:user => current_user, :picture => @picture))

  redirect_to category_picture_path(@picture.category.name, @picture.id)
end


private
def comment_params
  params.require(:comment).permit(:commenter, :body)
end

end