class TimeController < ApplicationController

	def display
		@time = Time.now.strftime("%H:%M:%S")
		@date = Date.today.to_s
		render 'display'
	end
end
