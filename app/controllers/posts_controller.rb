class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:destroy, :edit, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    redirect_to root_path if post.update(post_params)
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :genre_id, :content, :purpose).merge(user_id: current_user.id, category_id: genre_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
