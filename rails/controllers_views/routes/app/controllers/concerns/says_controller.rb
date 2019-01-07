class SaysController < ApplicationController
	def say
	end

	def hello
	end

	def joe
	end

	def michael
		redirect_to "/say/hello/joe"
	end

	def index
		render text: "What do you want me to say?"
	end

	def times
		session[:counter] = 0 unless session[:counter]
		session[:counter] += 1
	end

	def restart
		session[:counter] = nil
	end
end
