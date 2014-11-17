class Dictionary
	attr_accessor :entries
	
	def initialize
		@entries = {}
	end
	
	def add(k)
		if k.class == String
			@entries[k]=nil
		else
			for i,b in k
				@entries[i]=b
			end
		end
	end
	
	
	def keywords
		@entries.keys.sort
	end

	def include?(a)
		for i in @entries
			if i == a
				return true
			else 
				return false
			end
		end
	end
	
	def find(k)
		answer={}
			@entries.each do |key,v|
				if key[0...k.length] == k
						answer[key]=v
				end
				if k[0..1] == key[0..1]
					answer[key]=v
				end
					
			end
				return answer
	end
	
	
	def printable
	a=@entries.sort.map do |k,v|
	"[#{k}] \"#{v}\""
	end
	a.join("\n")
	end
	
end
