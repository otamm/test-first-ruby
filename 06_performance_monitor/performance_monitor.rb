require 'time'

def measure(t=1)
	a=Time.now
	t.times do |aaaa|
		yield
	end
	b=Time.now
	total= (b - a)/t
	total
end
