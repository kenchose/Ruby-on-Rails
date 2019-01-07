class DojosController < ApplicationController
  def index
    @count = Dojo.all.count
    @dojo = Dojo.all
  end
end
