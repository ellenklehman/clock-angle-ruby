def clock(time)
	hours = time[0...-3].to_i
	minutes = time[-2..-1].to_i

	if hours >= 12
		hour_angle = (hours-12) * 30	
	end	
	if hour_angle > 180
		hour_angle = 360 - hour_angle
	end
	hour_angle
end
clock('12:00')