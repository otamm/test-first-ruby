def reverser
	a=yield.split(" ")
	b=[]
	for i in a
		b.push(i.reverse)
	end
	c=b.join(" ")
	c
end

def adder(num=1)
	a= yield + num
	a
end

def repeater(t=1)
	t.times do |aaa|
		yield
	end
end
