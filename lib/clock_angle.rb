def clock(time)
	hour = time[0...-3].to_f
	minute = time[-2..-1].to_f

	if hour >= 12
		hour = (hour-12)
	end

	angle = ((minute * 6) - (hour * 30))
	if angle < 0 #checks if the minute hand is further around the clock
	  angle = angle.abs + minute * 0.5
	else 
	 	angle = angle.abs - minute * 0.5
	end

	if angle > 180 #ensures the smaller of the two angles is returned
		angle = 360 - angle
	end

	"#{angle}\xC2\xB0"
end

clock('12:00')