class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new( user_params )
    if @user.save
      redirect_to @user # shortcut to redirect to the show page: @user turns into user_path(@user.id)
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path #or redirect_to: back
    end
  end

  def show
    @user = User.find(params[:id])
    flash[:notice] = ["User successfully created"]
  end

  private 
    def user_params
      params.require(:user).permit(:username)
    end
end
