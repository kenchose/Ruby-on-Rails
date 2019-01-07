class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    if @dojo.save 
      redirect_to '/dojos'
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def show
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
end
