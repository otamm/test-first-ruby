def echo(say)
   return say
end

def shout(say)
   return say.upcase
end

def repeat(st,i=2)
	a= (st + " ")*i
	a[0,a.length-1]
end

def start_of_word(st,num=1)
   return st[0,num]
end

def first_word(st)
   a=st.split(" ")
   return a[0]
end

def titleize(title)
	li_wrd=["and","over","the"]	
	tit=title.split(" ")
	for word in titl
		word.capitalize! unless li_wrd.include?(word)
	end
	t= titl.join(" ")
	t[0].upcase + t[1,t.length]
end

