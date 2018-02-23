class UsersController < ApplicationController
	def index
		@users = User.all
		print @user
		print current_user
	end

	def new

	end

	def create
		@user = User.create(user_params)

		if @user.valid?
			session[:user_id] = @user.id

			return redirect_to '/users'
		end

		flash[:errors] = @user.errors.full_messages

		return redirect_to :back
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
		end
end
