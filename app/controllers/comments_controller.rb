class CommentsController < ApplicationController
  before_filter :login_required, :except => %w[ index show create ]
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
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = 'Your comment was deleted successfully.'
    redirect_to @comment.post
  end
end
