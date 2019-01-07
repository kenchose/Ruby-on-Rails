class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = ["Invalid Combination"]
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to new_sessions_path
  end
end
