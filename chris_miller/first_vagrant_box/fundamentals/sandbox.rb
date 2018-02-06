class CodingDojo 
  @@no_of_branches = 0
  attr_accessor :branch_id, :branch_name, :branch_address
  def initialize(id, name_Of, address) 
    @branch_id = id 
    @branch_name = name_Of
    @branch_address = address 
    @@no_of_branches += 1 
    puts "Created branch #{@@no_of_branches}"
  end
  def hello 
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}" 
    puts "Branch Address: #{@branch_address}"
  end
  def self.num_of_branches
    @@no_of_branches
  end
end
seattle = CodingDojo.new(1, "Seattle", "123 Seattle Avenue")
san_jose = CodingDojo.new(2, "San Jose", "456 San Jose Boulevard")
burbank = CodingDojo.new(3, "Burbank", "789 Burbank Street")

puts seattle.branch_name



# class CodingDojo 
#   @@no_of_branches = 0
#   def initialize(id, name, address) 
#     @branch_id = id 
#     @branch_namecopy = name 
#     @branch_address = address 
#     @@no_of_branches += 1 
#     puts "Created branch #{@@no_of_branches}"
#   end
#   def hello 
#     puts "Hello CodingDojo!"
#   end
#   def display_all
#     puts "Branch ID: #{@branch_id}"
#     puts "Branch Name: #{@branch_name}" 
#     puts "Branch Address: #{@branch_address}"
#   end 
# end 
# # now using above class to create objects 
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
# branch.display_all 
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
# branch2.display_all

##########Class Attributes############
# class User
# 	attr_accessor :first_name, :last_name
# 	def initialize(f_name, l_name)
# 		@first_name = f_name
# 		@last_name = l_name
# 	end
# end

# user1 = User.new("Chris", "Miller")

# puts user1.inspect