class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]

  def index
    @user = User.find(params[:user_id])
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
  end

  private

  def profile_params
    params.require(:profile).permit(:birthday, :gender, :fav_genre1_id, :fav_genre2_id, :fav_genre3_id).merge(user_id: current_user.id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
