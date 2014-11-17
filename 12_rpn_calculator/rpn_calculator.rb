class RPNCalculator
	attr_accessor :calculator
	
	def initialize
		@calculator=[]
	end

	def push(num)
		@calculator.push(num)
	end

	def value
		@calculator.last
	end

	def plus
		if @calculator.size > 1
			a=@calculator.pop + @calculator.pop
			@calculator.push(a)
		else
			raise "calculator is empty"
		end
	end

	def minus
		if @calculator.size > 1
			a=@calculator.pop
			b=@calculator.pop
			c= b - a
			@calculator.push(c)
		else
			raise "calculator is empty"
		end
	end

	def divide
		if @calculator.size > 1
			a=@calculator.pop
			b=@calculator.pop
			c= b.to_f / a.to_f
			@calculator.push(c)
		else
			raise "calculator is empty"
		end
	end

	def times
		if @calculator.size > 1
			a=@calculator.pop.to_f * @calculator.pop.to_f
			@calculator.push(a)
		else
			raise "calculator is empty"
		end
	end

	def tokens(st)
		a=st.split(" ")
		b=[]
			for i in a
				if i == "+" or i == "-" or i == "/" or i == "*"
					b.push(i.to_sym)
				else
					b.push(i.to_i)
				end
			end
		b
	end

	def evaluate(strin)
		a=tokens(strin)
		for i in a
			if i == :+
				self.plus
			elsif i == :-
				self.minus
			elsif i == :/
				self.divide
			elsif i == :*
				self.times
			else
				self.push(i)
			end
		end
		self.value
	end

end
