class DojosController < ApplicationController
  def dojos
    @dojo = Dojo.all
  end
end
