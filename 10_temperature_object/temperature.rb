class Temperature
	def initialize(temp=Hash.new)
		if temp.include?(:f)
			@temp= (((temp[:f] - 32.0) * 5.0)/9.0)
		end
		if temp.include?(:c)
			@temp=temp[:c]
		end
	end
	
	def in_fahrenheit
		a=(((@temp) * 9.0)/5.0) + 32.0
		a
	end

	def in_celsius
		@temp
	end
	
	def self.from_celsius(celsius)
		Temperature.new(:c=>celsius)
	end
	
	def self.from_fahrenheit(fahren)
		Temperature.new(:f=>fahren)
	end

	def self.ftoc(fahren)
		(((fahren - 32) * 5)/9)
	end

	def self.ctof(celsius)
		(((celsius) * 9.0)/5.0) + 32.0
	end
end

class Celsius < Temperature
	def initialize(celsius)
		super(:c => celsius)
	end
end

class Fahrenheit < Temperature
	def initialize(fahren)
		super(:f => fahren)
	end
end
