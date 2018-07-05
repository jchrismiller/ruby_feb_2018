class UsersController < ApplicationController
	def index
		@users = User.all
		@user = current_user
	end

	def new

	end

	def create
		@user = User.create(user_params)

		if @user.valid?
			session[:user_id] = @user.id

			return redirect_to '/bright_ideas'
		end

		flash[:errors] = @user.errors.full_messages

		return redirect_to :back
	end

	def show
		@user = User.find_by_id(params[:id])
		print @user.id, "HELLLLLLLLLLLLLLLLLLLLOOOOOOOOOOOOOOOOOOo"
		@bright_ideas = BrightIdea.where(user_id: @user.id).count

		@likes = Like.where(user_id: @user.id).count

		render 'show'

	end

	def destroy

	end
end
