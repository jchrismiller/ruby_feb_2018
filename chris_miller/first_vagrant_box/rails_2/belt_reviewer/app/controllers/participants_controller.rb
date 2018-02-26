class ParticipantsController < ApplicationController

	def create
		@participant = Participant.new
		@event = Event.find_by_id(:id)
		@participant.event = @event
		@participant.user = current_user

		@participant.save
	end

	def destroy
		event = Event.find_by_id(:id)
		event.participant.destroy

		return redirect_to '/events'
	end
end
