def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def sum(arr)
total=0
	for num in arr
		total+=num
	end
total
end

def multiply(*args)
num=1
args.each{|nu| num*=nu}
num
end

def power(num1,num2)
a=1
b=num1
while a < num2
a+=1
b*=num1
end
b
end

def factorial(x)
return 0 if x==0
    fact=[]
    i=0
        while i < x
            i+=1
            fact.push(i)
        end
    number=1
    for num in fact
        number*=num
    end
    number
end
