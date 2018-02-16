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

	def show
		@dojo = Dojo.find_by_id( params[:id] )
		@students = @dojo.students
		render 'show'
	end

	def edit
		@dojo = Dojo.find_by_id( params[:id] )
		render 'edit'
	end

	def update
		dojo = Dojo.find_by_id( params[:id] )
		dojo.branch = params[:branch]
		dojo.city = params[:city]
		dojo.state = params[:state]
		dojo.save
		redirect_to '/dojo'
	end
end
