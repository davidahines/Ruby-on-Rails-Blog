class CommentsController < ApplicationController
  
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment])
    @comment.post = @post
    if @comment.save
      flash[:notice] = 'Thanks for your comment!'
    else
      flash[:notice] = 'Something went wrong while adding your comment'
    end
    redirect_to @post
  end
end
