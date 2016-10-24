def add(num1, num2)
    result=num1+num2
    result
end

def subtract(num1, num2)
    result=num1-num2
    result
end

def sum(array)

  result = 0.0
  if array.length > 0 then
    array.each do |item|
      result += item
    end

  end
  return result
end


def multiply(num1,num2)
      result=num1*num2
    result
end  

def multiplyArray(array)
      result = 1
  if array.length > 0 then
    array.each do |item|
      result *= item
    end

  end
  return result
end  


def power(num1,num2)
     result=1
     for i in 1..num2 
     result*=num1
     end
 result
     
end


def factorial(num1)
     result=1
     for i in 1..num1 
     result*=i
     end
 result
     
end










