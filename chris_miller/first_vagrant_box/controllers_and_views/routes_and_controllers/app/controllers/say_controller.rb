class SayController < ApplicationController
	def index
		render text: "What do you want me to say?"
	end

	def say_hello
		render text: "Saying Hello!"
	end

	def say_hello_joe
		render text: "Saying hello Joe!"
	end

	def say_hello_michael
		redirect_to "/say/hello/joe"
	end
end
