class BrightIdeasController < ApplicationController
	def index
		@bright_ideas = BrightIdea.all
		render 'index'
	end

	def create
		BrightIdea.create(bright_idea_params)

		return redirect_to '/bright_ideas'
	end

	def show
		@bright_idea = BrightIdea.find_by_id(params[:id])
		@bright_ideas = BrightIdea.all
		render 'show'
	end

	def destroy
		bright_idea = BrightIdea.find_by_id(params[:id])
		bright_idea.destroy
		 return redirect_to '/bright_ideas'
	end

end
