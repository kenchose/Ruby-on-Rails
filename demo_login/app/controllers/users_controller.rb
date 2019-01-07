class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :require_correct_user, only: [:show, :edit, :update, :destroy]
  
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id #puts them in session and gives them id 
      redirect_to @user #how are we able to use @user? @user = user_path(@user.id) look upon rake routs to seeor vid @30:00
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
  
end
