class EventsController < ApplicationController
	def create
		redirect_to "users/params[:id]"
	end
end
