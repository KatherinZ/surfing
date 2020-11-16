class CommentsController < ApplicationController

  http_basic_authenticate_with :name => "surfer", :password => "surferpassword", :only => :destroy

  def create
		@post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:body).merge(user_id: current_user.id))
	end
	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end
end
