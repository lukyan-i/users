class CommentsController < ApplicationController
before_filter :authenticate_user!
def create
  @picture = Picture.find(params[:picture_id])
  @comment = Comment.create(comment_params.merge(:user => current_user, :picture => @picture))
  Event.create(:user_id=>current_user.id, :action_type=>"comments", :data => {:url=>request.original_url,:category_name=>Category.find(@picture.category_id).name,:picture_name=>@picture.image_file_name,:description=>'Commented picture'})
  redirect_to category_picture_path(@picture.category.name, @picture.id)
end


private
def comment_params
  params.require(:comment).permit(:commenter, :body)
end

end