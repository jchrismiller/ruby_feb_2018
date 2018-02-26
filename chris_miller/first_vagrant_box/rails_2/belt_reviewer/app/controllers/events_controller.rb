class EventsController < ApplicationController
	def index
		@events = Event.all
		@users = User.all

		render 'index'
	end

	def create
		Event.create(event_params)

		# if @event.valid?

		return redirect_to '/events'
		# end

		# flash[:errors] = @user.errors.full_messages

		# return redirect_to :back
	end

	def show
		@event = Event.find_by_id(params[:id])
		render 'show'
	end

end
