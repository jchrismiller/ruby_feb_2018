a = ["ant", "bear", "cat"]
#=======any
puts a.any? { |word| word.length >= 3 } # => true

#=======each
["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--

#=======collect
(1..4).collect { |i| i*i } # => [1, 4, 9, 16]
(1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]

#=======detect/find
(1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
(1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

#=======find_all
(1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

#=======reject (opposite of find_all)
(1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

#=======upto(limit)
5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10