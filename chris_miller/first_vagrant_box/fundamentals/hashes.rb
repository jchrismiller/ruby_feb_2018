# y = {}
# puts y.empty?

# y = {:first_name => "Chris", :last_name => "Miller"}

# y.delete(:first_name)

# puts y

def new_user greeting = "Hey", first_name: "first", last_name: "last"
	puts "#{greeting}, #{first_name}, #{last_name}"
end

our_user = {first_name: "crazy", last_name: "Matt"}

new_user "Yo", our_user