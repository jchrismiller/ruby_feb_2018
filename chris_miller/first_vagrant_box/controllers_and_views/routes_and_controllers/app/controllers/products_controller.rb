class ProductsController < ApplicationController

	def hello
		render text: "Hello Coding Dojo!"
	end

	def increment_counter
		if session[:counter].nil?
			session[:counter] = 0
		end
		session[:counter] +=1
	end

	def destroy
		session[:counter] = nil
	end

	def times

		@count = increment_counter
		render text: "You have visited this url #{@count} times"
	end

	def times_restart
		session[:counter] = nil
		render text: "Destroyed the session!"
	end
end
