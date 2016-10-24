def reverser
    k = []
  x = yield.split(" ")
  x.each do |y|
    n = y.reverse
  k.push(n)
end

m = k.join(" ")
m
    
end

def adder(num=1, &block)
  block.call + num
end

def repeater(num=1, &block)
    for i in (1..num) do
        block.call
    end
end