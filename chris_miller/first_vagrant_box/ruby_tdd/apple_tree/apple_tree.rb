class Apple_tree
	attr_accessor :age
	def initialize(age)
		@age = age
		@height = 20
		@apple_count = 30
	end

	def get_height
		@height
	end

	def get_apple_count
		@apple_count
	end

	def years_gone_by
		@age +=1
		@height += @height/10
		if @age > 3 and @age < 10
			@apple_count +=2
		end
		"#{@age}, #{@height}, #{@apple_count}"
	end

	def pick_apples
		@apple_count = 0
	end
end