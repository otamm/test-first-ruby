class Timer
attr_accessor :seconds

def initialize
	@seconds= 0 
end

def time_string
	mins = @seconds/60
	hours = mins / 60
	sec = @seconds % 60
	mitt = mins % 60
	h = hours.to_s
	s= sec.to_s
	m = mitt.to_s
		if m.size < 2
			m= "0" + m
		end
		if h.size < 2
			h = "0" + h
		end
		if s.size < 2
			s= "0" + s
		end
	b=h + ":" + m + ":" + s
end
end
