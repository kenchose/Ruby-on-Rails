class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.save
      redirect_to '/dojos'
      #refactoring: of '/dojos' you can redirect_to "/movies/#{@dojo.id}" directing to their own page
    else
      flash[:errors] = @dojo.errors.full_messages
      render :new # redirect_to :back
      #refactoring: can render :new .Now look into your html file of new.
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    if @dojo.update(dojo_params)
     redirect_to '/dojos'
    else
      flash[:errors] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @dojo = Dojo.find(params[:id]).destroy
    redirect_to "/dojos"
  end
  private 
    def dojo_params
      params.require(:dojo).permit(:branch, :street, :city)
    end
end
