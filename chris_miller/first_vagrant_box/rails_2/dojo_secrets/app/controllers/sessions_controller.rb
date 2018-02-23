class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])

		if user
			if user.authenticate(params[:password])
				session[:user_id] user.id
				
				return redirect_to users_path
			end

			# flash incorrect password
		else

		#flash incorrect email
		
		end

		return redirect_to :back
	end

	def destroy

	end
end
