class Human
	attr_accessor :health, :strength, :intelligence, :stealth
	def initialize
		@health = 100
		@strength = 3
		@intelligence = 3
		@stealth = 3
	end

	def display_stats
		puts "Health: #{@health}, Strength: #{@strength}, Intelligencce: #{@intelligence}, Stealth: #{@stealth}"
		self
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

class Wizard < Human
	def initialize
		@health = 50
		@intelligence = 25
		self
	end

	def display_stats
		super
	end

	def heal
		@health += 10
		self
	end

	def fireball(obj)
		obj.health -= 20
		self
	end

	def display_health
		super
	end
end

class Ninja < Human
	def initialize
		@stealth = 175
	end

	def steal(obj)
		attack(obj)
	end	
	def display_stats
		super
	end

	def get_away
		@health -= 15
	end

	def display_health
		super
	end
end

class Samurai < Human
	@@no_of_samurai = 0
	@@no_of_samurai += 1
	def initialize
		@health = 200
		super
	end

	def death_blow(obj)
		obj.health = 0
	end

	def meditate
		initialize
	end

	def display_stats
		super
	end	

	def how_many
		puts @@no_of_samurai
	end

	def display_health
		super
	end
end


ninja1 = Ninja.new
sam1 = Samurai.new

ninja1.steal(sam1)

sam1.display_stats
sam1.display_health

wiz = Wizard.new
wiz.heal
wiz.display_health
