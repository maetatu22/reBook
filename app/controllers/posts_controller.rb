class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:destroy, :edit, :show]
  before_action :search_post, only: [:index, :search]

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

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def update
    post = Post.find(params[:id])
    redirect_to root_path if post.update(post_params)
  end

  def search
    @results = @p.result.includes(:category)  # 検索条件にマッチした商品の情報を取得
  end

  private

  def search_post
    @p = Post.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def post_params
    params.require(:post).permit(:title, :author, :genre_id, :content, :purpose).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
