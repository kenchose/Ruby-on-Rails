class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def result
		session[:counter] = 0 unless session[:counter]
    session[:counter] += 1
    @user = User.new(name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])
    if @user.save
      flash[:notice] = ['Thanks for submitting this form! You have submitted this form ']
      flash[:notice] << session[:counter]
      flash[:notice] << [" times now."]
    end
  end
end
