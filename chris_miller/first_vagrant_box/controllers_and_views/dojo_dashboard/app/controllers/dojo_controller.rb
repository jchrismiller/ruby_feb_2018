class DojoController < ApplicationController

	def index
		@dojos = Dojo.all
		render 'index'
	end

	def create
		@dojo = Dojo.create( branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
		redirect_to '/dojos'
	end

	def new
		render 'new'
	end
end
