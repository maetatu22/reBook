class ProfilesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
