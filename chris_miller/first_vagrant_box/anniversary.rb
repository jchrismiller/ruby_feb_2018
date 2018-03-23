require 'date'

# def love(partner)
# 	@years = 0
# 	i = 0
# 	@day_met = Date.new(2017, 9, 10)
# 	while(i < 200)
		
# 		@date = DateTime.now
# 		if ((@date - @day_met) % 365 == 0)
# 			@years ++
# 			print "Happy Anniversary number #{@years} #{partner}"
# 			i++
# 		end 
# 		print "I love you!"
		
# 	end
# end

# love("Erin")
@date = DateTime.now
@day_met = Date.new(2017, 9, 10)
@d1 = DateTime.parse(@date)
@d2 = DateTime.parse(@day_met)
print (@d1 - @d2)*24*60.to_f
print "I love you Erin!\n"