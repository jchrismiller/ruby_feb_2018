class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
  	return User.find(session[:user_id]) if session[:user_id]
  end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :location, :state, :email, :password, :password_confirmation)
	end

  def event_params
    params.permit(:name, :date, :location, :state, :user_id)
  end


end
