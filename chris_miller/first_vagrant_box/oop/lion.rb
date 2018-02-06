require_relative 'mammal'

class Lion < Mammal
	def initialize(health = 170)
		@health = health
		self
	end

	def display_health
		super
	end

	def fly
		@health -= 10
		self
	end

	def attack_town
		@health -= 50
		self
	end

	def eat_humans
		@health += 20
		self
	end
end

leo = Lion.new

leo.display_health

matt = Mammal.new

matt.display_health

leo.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health

