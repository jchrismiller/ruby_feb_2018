class UsersController < ApplicationController
	def index
		@users = User.all
		@user = current_user
		print @user
		print current_user
	end

	def new

	end

	def create
		@user = User.create(user_params)

		if @user.valid?
			session[:user_id] = @user.id

			return redirect_to '/events'
		end

		flash[:errors] = @user.errors.full_messages

		return redirect_to :back
	end

	def edit
		@user = User.find_by_id( params[:id] )
		return render 'edit'

	end

	def update
		user = User.find_by_id( params[:id] )
		user.first_name = params[:first_name]
		user.last_name = params[:last_name]
		user.location = params[:location]
		user.state = params[:state]
		user.save
		redirect_to '/events'

	end

	def destroy

	end
end
