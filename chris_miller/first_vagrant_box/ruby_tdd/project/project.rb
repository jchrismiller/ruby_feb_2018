class Project
	attr_accessor :name, :description, :owner
	def initialize(name, description, owner)
		@name = name
		@description = description
		@tasks = []
		@owner = owner
	end

	def elevator_pitch
		"#{name}, #{description}"
	end

	def tasks
		return @tasks
	end

	def add_tasks(thing)
		@tasks.push(thing)
	end
end
projectZ = Project.new("Project 1", "description 1", "Chris")
puts projectZ.name # => "Project 1"
projectZ.add_tasks("Hello World")
puts projectZ.tasks
projectZ.elevator_pitch  # => "Project 1, Description 1"