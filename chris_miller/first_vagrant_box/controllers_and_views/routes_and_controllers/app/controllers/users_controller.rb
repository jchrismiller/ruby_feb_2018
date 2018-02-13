class UsersController < ApplicationController
	def get_users
		render json: User.all
	end

	def new
		render 'users/new'
	end	

	def create
		User.create( name: params[:name] )
		redirect_to '/users'
	end
	
	def get_user
		render json: User.find_by_id( params[:id] )
	end	

	def edit
		@user = User.find_by_id( params[:id] )
		render 'users/edit'
	end

	def update
		@user = User.find_by_id( params[:id] )
		@user.update(name: params[:name])

		redirect_to '/users'
	end
end
