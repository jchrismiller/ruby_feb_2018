class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])

		if user
			if user.authenticate(params[:password])
				session[:user_id] = user.id
				
				return redirect_to '/users'
			end

			# flash incorrect password
			# flash[:errors] = @user.errors.full_messages
		else

		# flash incorrect email
		# flash[:errors] = @user.errors.full_messages
		
		end

		return redirect_to :back
	end

	def destroy
		session[:user_id] = nil

		return redirect_to '/users/new'
	end
end
