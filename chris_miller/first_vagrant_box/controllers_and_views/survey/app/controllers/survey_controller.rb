
class SurveyController < ApplicationController
  def index
  	render 'index'
  end

  def increment_counter
	if session[:counter].nil?
			session[:counter] = 0
	end
	session[:counter] +=1
  end

  def create
  	@count = increment_counter

  	session[:survey] = survey_params
  	puts "HI MATT", session[:survey]
  	flash[:success] = "Thanks for submitting this form! You have submitted this form #{@count} times now."

  	return redirect_to '/result'
  end

  def result
  	@result = session[:survey]
  	p "HELLLOOOOOOOOOOOOO", @result
  	render 'result'
  end

  def back
  	redirect_to '/'
  end

  private
  	def survey_params
  		params.require(:survey).permit(:name, :location, :language, :comment)
  	end
end
