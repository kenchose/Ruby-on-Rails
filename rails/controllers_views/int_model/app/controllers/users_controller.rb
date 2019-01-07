class UsersController < ApplicationController
  def index
		@users = User.all
		render json: @users
	end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name])
    if @user.save
      redirect_to "/users"
    end
  end

  def show
    @users = User.first
    render json: @users
  end

  def edit
    @users = User.first
  end

  # def update
  #   redirec_to "users/1"
  # end
  def total
    @users = User.all
  end
end
