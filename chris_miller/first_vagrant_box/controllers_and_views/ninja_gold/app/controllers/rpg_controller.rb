class RpgController < ApplicationController

	def index
		
		if session[:gold].nil?
			session[:gold] = 0
		end

		session[:activities] ||= []
		render "ninja_gold"
	end 

	def farm
		rand_num = rand(10..20)
		session[:gold] += rand_num
		activity = "Earned #{rand_num} gold from the Farm! (" + Time.now.strftime("%H:%M:%S") + ")"
		session[:activities].push({:activity => activity, :color => 'green'})
		redirect_to '/'
	end

	def cave
		rand_num = rand(5..10)
		session[:gold] += rand_num
		activity = "Earned #{rand_num} gold from the Cave! (" + Time.now.strftime("%H:%M:%S") + ")"
		session[:activities].push({:activity => activity, :color => 'green'})
		redirect_to '/'
	end

	def house
		rand_num = rand(2..5)
		session[:gold] += rand_num
		activity = "Earned #{rand_num} gold from the House! (" + Time.now.strftime("%H:%M:%S") + ")"
		session[:activities].push({:activity => activity, :color => 'green'})
		redirect_to '/'
	end

	def casino
		rand_bool = rand(1..2)
		rand_num = rand(0..50)
		if rand_bool == 1
			session[:gold] += rand_num

			if rand_num > 40
				activity = "Big Win!! Great Job Pardner! (" + Time.now.strftime("%H:%M:%S") + ")"
				session[:activities].push({:activity => activity, :color => 'yellow'})

			elsif rand_num > 49
				activity = "Holy Cow Pardner! You just won the JACKPOT!!! (" + Time.now.strftime("%H:%M:%S") + ")"
				session[:activities].push({:activity => activity, :color => 'yellow'})

			else
			activity = "Entered the Casino and won #{rand_num} gold! (" + Time.now.strftime("%H:%M:%S") + ")"
			session[:activities].push({:activity => activity, :color => 'yellow'})
			end
			return redirect_to '/'
		end
		if rand_bool == 2
			session[:gold] -= rand_num
			activity = "Entered the Casino and lost #{rand_num} gold... (" + Time.now.strftime("%H:%M:%S") + ")"
			session[:activities].push({:activity => activity, :color => 'red'})
		end
		redirect_to '/'

	end

  def reset
  	session[:gold] = nil
  	session[:activities] = nil
  	return redirect_to '/'
  end

end

