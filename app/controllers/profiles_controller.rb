class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]
  before_action :set_user

  def index
    @profile = @user.profile
    @posts = @user.posts
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to user_profiles_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to user_profiles_path
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:birthday, :gender, :fav_genre1_id, :fav_genre2_id, :fav_genre3_id).merge(user_id: @user.id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
