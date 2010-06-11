#app/controllers/posts_controller.rb
class PostsController < ApplicationController
  def index
    @posts = Post.find(:all, :order => 'created_at DESC')
    @post = Post.new(params[:post])
  end
  def create
    @post = Post.new(params[:post])                       #new post object from the form.
    if @post.save                                         #tries to save the post then uses the result as a bool.
      flash[:notice] = 'Your post was saved successfully.'#sets a temporary flash message
      redirect_to @post                                   #takes you to the show screen.
    else
      render :action => 'new'                             #failing to save takes you to the new screen.
    end
  end
  def new
    @post = Post.new
  end
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:id])
      flash[:notice] = 'Your post was saved successfully.'
      redirect_to @post
    else
      render :action => 'edit'
    end
  end
end
