# require "stringer/version"
module Stringer
	def self.spacify (*strings)
		strings.join(" ")
	end

	def self.minify(string, max)
		if max > string.length
			return string
		end
		"#{string[0...max]}..."
	end

	def self.replacify(string, word, replacement)
		string = string.split(" ")

		string.map! do |s| 
			if s == word
				replacement
			else
				s
			end
		end
		string.join(" ")
	end

	def self.tokenize(string)
		string.split(" ")
	end

	def self.removify(string, remove)
		string = string.split(" ")
		string.reject! { |s| s == remove }
		string.join(" ")
end
end

puts Stringer.spacify "Hello", "World"
puts Stringer.minify "Hello World", 10
puts Stringer.replacify "Hello World", "World", "Dojo"
puts Stringer.tokenize "Hello World"
puts Stringer.removify "Hello World", "World"
