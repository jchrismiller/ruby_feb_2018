a = ["matt", "chris", "eric", "caleb", "staci"]
b = ["d", "a", "c"]
a.sort!
puts a
b.sort!
puts b
puts "---"

puts a.at(0)
puts a.fetch(1)

a.reverse!
puts a

a.delete_at(2)

puts a
puts a.length
puts "------"
puts "slice"
puts "------"
a.slice(2)
puts a
puts "------"
puts "shuffle"
puts "------"
puts a.shuffle
puts "------"
puts "join"
puts "------"
puts a.join(" is better than ")
puts "------"
puts "insert"
puts "------"
puts a.insert(2, "Authman")
puts "------"
puts "values_at"
puts "------"
puts a.values_at(0, 1)