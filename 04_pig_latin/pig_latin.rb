def translate(str)
	vowels=["a","e","i","o","u"]
	phonems=["ch","thr","sch","qu","squ","th","br"]
	s=str.split(" ")
	new=[]
	for i in s
		if vowels.include?(i[0])
			new.push(i + "ay")
		elsif phonems.include?(i[0,3])
			new.push(i[3,i.size] + i[0,3] + "ay")
		elsif phonems.include?(i[0,2])
			new.push(i[2,i.size] + i[0,2] + "ay")
		else
			new.push(i[1,i.size] + i[0] + "ay")
		end
	end
	b=new[0].split(" ")
	if new[0] != new[0].downcase
		new[0] = new[0][0].upcase + new[0][1,new[0].size].downcase
	end
	a=new.join(" ")
	a
end
