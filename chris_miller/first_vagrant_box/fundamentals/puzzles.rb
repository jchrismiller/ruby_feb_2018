# 1
# def greater_than(arr)
# 	$sum = 0
# 	for i in 0..arr.length-1
# 		$sum = $sum + arr[i]
# 	end
# 	new_arr = arr.find_all { |i| i > 10 }
# 	puts $sum, new_arr
# end

# greater_than([3, 5, 11, 12])

# 2
# def shuffle(arr)
# 	arr.shuffle!
# 	puts arr
# 	for i in 0..arr.length-1
# 		new_arr = arr.find_all { |i| i.length > 5 }
# 	end
# 	puts new_arr
# end

# shuffle(["Ed", "John", "Authman"])

# 4
# random = Random.new
# puts random.rand(55..100)