# 1
# puts (1..255).to_a

# 2
# puts (1..255).find_all { |i| i%2 != 0 }

# 3
# $sum = 0
# for i in 0..255
# 	$sum += i;
# 	print "New number #{i}" 
# 	puts " Sum: " + $sum.to_s
# end

# 4
# x = [1,3,5,7,9,13]
# x.each { |num| puts num}

# 5
# puts [1, 3, -3, 0, -15].max

# 6
# class Array
# 	def average
# 		inject(&:+) / size
# 	end
# end

# puts [1,6,18].average

# 7
# def push_it(num, arr = [])
# 	for i in 1..num
# 		if i%2 != 0
# 			arr.push(i)
# 		end
# 	end
# 	print arr
# end

# push_it(255)

# 8
# def count(num, arr)
# 	counter = 0
# 	for i in 0..arr.length-1
# 		if arr[i] > num
# 			counter = counter + 1
# 		end
# 	end
# 	return counter
# end

# puts count(5, [1, 3, 7, 99, 100, 101])

# 9
# def square(arr)
# 	for i in 0..arr.length-1
# 		arr[i] *= arr[i]
# 	end
# 	return arr
# end

# print square([1, 2, 3, 4])

# 10
