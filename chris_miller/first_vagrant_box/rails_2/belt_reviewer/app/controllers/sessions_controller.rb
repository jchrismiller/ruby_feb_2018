class SessionsController < ApplicationController

	def new
		print flash[:errors]
	end

	def create

		user = User.find_by_email(user_params[:email])

		if user
			if user.authenticate(user_params[:password])
				session[:user_id] = user.id
				
				return redirect_to '/events'
			end
		end
		# flash incorrect email
		flash[:errors] = ["invalid email or password"]

		return redirect_to :back
	end

	def destroy
		session[:user_id] = nil

		return redirect_to '/users/new'
	end
end
