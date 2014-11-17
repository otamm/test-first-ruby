class Book

def title
	@title
end
def title=title
	@title=titleize(title)
end

def titleize(title)
	li_wrd=["and","in","the","a","an","of"]	
	titl=title.split(" ")
	for word in titl
		word.capitalize! unless li_wrd.include?(word)
	end
	t= titl.join(" ")
	t[0].upcase + t[1,t.length]
end
end
