class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:destroy,:edit, :update]
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
  def destroy
  @user = User.find(params[:id])
  @user.destroy
  UsersMailer.user_destroyed(@user).deliver
  redirect_to users_path
end

private

def correct_user
  @user = User.find(params[:id])
  if current_user?(@user) || current_user.admin?
  else  redirect_to(root_url)
   end
end

def user_params
  params.require(:user).permit(
    :first_name,
   :last_name,
   :email,
   :age,
   :country,
   :password,
   :address,
   :sex,
   :password_confirmation,
   :avatar)
end
end
