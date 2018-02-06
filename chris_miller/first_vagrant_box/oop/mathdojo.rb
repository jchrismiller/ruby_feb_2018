class MathDojo
	attr_accessor :result

	def initialize(result = 0)
		@result = result
	end

	def add(*nums)
		@result += nums.flatten.reduce(0,:+)
		self
	end

	def subtract(*nums)
		@result -= nums.flatten.reduce(0, :+)
		self
	end
end


puts challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4

puts "---"
challenge2 = MathDojo.new.add(1)
puts challenge2.result
puts "---"
challenge2.add([3, 5, 7, 8], [2, 4.3, 1.25])
puts challenge2.result
puts "---"
challenge2.subtract([2,3], [1.1, 2.3])
puts challenge2.result
