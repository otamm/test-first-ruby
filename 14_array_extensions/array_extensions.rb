class Array
def sum
	t=0
	for i in self
		t+=i
	end
	t
end

def square
	if self == []
		return []
	end
	a=[]
	for i in self
		a.push(i**2)
	end
a
end

def square!
	if self == []
		return []
	end
	self.collect!{|aa| aa**2}
end
end
