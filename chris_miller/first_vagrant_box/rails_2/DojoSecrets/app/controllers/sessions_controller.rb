class SessionsController < ApplicationController
  def new
  	# render login page
  end

  def create
  	# Log user in
  	@user = User.find_by(email: params[:email])
  	# if authenticate true
  	if @user && @user.authenticate(params[:password])
  		# save user id to session
  		session[:user_id] = @user.id
  		# redirect to user's profile page
  		redirect_to "/users/#{@user.id}"
  	# if authenticate false
  	else
  		# add an error message -> flash[:errors] = ["Invalid"]
  		flash[:errors] = ["Incorrect username/password"]
  		# redirect to login page
  		redirect_to :back
	end
  end

  def destroy
  	# Log user out

  	# set session[:user_id] to null
  	# redirect to login page
    redirect_to '/login'
  end

  def current_user
  	User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
