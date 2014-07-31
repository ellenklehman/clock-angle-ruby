def clock(time)
	hour = time[0...-3].to_i
	minute = time[-2..-1].to_i

	if hour >= 12
		hour = (hour-12)
	end

	angle = ((minute * 6) - (hour * 30)).abs

	if angle > 180
		angle = 360 - angle
	end
	
	angle
end
clock('12:00')