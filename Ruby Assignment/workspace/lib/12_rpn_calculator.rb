class RPNCalculator
  # TODO: your code goes here!
  def initialize(value = 0, array = [])
    @value = value
    @array = array
  end

  def push(num)
    @array.push(num)
  end
  
  def value
    return @value
  end
  
  def plus
    if @array.length == 0
        raise ArgumentError.new("calculator is empty")
    end
    if @array.length >= 2
        @value += @array[-1] + @array[-2]
        @array.pop(2)
    else
        @value += @array[-1]
        @array.pop
    end
  end

def minus
       if @array.length == 0
        raise ArgumentError.new("calculator is empty")
       end
    if @array.length >= 2
        @value += @array[-2] - @array[-1]
        @array.pop(2)
    else
        @value -= @array[-1]
        @array.pop
    end
end

def divide
       if @array.length == 0
        raise ArgumentError.new("calculator is empty")
       end
    if @array.length >= 2
        @value += (@array[-2].to_f) / @array[-1]
        @array.pop(2)
    else
        @value /= @array[-1]
        @array.pop
    end
end

def times
       if @array.length == 0
        raise ArgumentError.new("calculator is empty")
       end
    if @array.length >= 2
        @value += (@array[-2].to_f) * @array[-1]
        @array.pop(2)
    else
        @value *= @array[-1]
        @array.pop
    end
end

def tokens(string)
    string.split.map{|s| s[/\d/] ? s.to_i : s.to_sym}
end


def evaluate(equation_str)
	stack = []
	equation_str.split.each do |term|
		case term
		when /^\d+?$/
			stack.push(term.to_f)
		when "+", "-", "*" , "/"
			if stack.size < 2
				raise "stack too small for operator application"
			else
				b = stack.pop
				a = stack.pop
				op = term.to_sym
				c = a.send(op, b)
				stack.push(c)
			end
		else
			raise "invalid input `#{term}'"
		end
	end
	value=stack.pop
	value
end
        
        

end
