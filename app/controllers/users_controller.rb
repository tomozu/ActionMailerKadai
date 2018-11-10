class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render'new'
    end
  end
   
  def show
    @user = User.find(params[:id])
    @favorites_blogs = @user.blogs
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,
                                 :image, :image_cache)
  end
end