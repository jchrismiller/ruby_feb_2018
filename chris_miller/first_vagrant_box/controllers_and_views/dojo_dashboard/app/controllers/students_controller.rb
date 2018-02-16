class StudentsController < ApplicationController

	def show
		@student = Student.find_by_id( params[:id] )
		render 'student_show'
	end


end
