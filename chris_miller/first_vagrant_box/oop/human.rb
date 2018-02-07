class Human
	attr_accessor :health, :strength, :intelligence, :stealth
	def initialize
		@health = 100
		@strength = 3
		@intelligence = 3
		@stealth = 3
	end

	def display_health
		puts @health
		self
	end

	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
			puts "Victim's health now #{obj.health}"
		end
	end
end

dude1 = Human.new
dude2 = Human.new

dude1.attack(dude2)
puts dude2.display_health
