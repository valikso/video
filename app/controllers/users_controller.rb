class UsersController < ApplicationController
#  before_action :set_user, only: [:edit]
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

private

def set_user

end

def user_params
  params.require(:user).permit(:name, :email, :password,
                               :password_confirmation, :avatar)
end

end
