class Array
  def sum
  total = 0
  self.each { |x| total += x }
  total
  end
  
  def square
   (0...length).each { |i| self[i] *= self[i] }   # or self.length
  self
  end
  
  def square!
  (0...length).each { |i| self[i] *= self[i] }   # or self.length
  self
  end
end