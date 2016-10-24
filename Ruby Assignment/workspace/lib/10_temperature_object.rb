class Temperature
  # TODO: your code goes here!
  
  class << self                   # Defining Factory Methods
    def from_fahrenheit temp
      Temperature.new({f: temp})  #Initializing for fahrenheit
    end

    def from_celsius temp
      Temperature.new({c: temp})
    end
  end
  
   def initialize(options={})  # Initializing with Hash option of Ruby 
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit  #Core method to return tempeature in passed in F or convert itto C
    return @f if @f
    (@c * (9.0 / 5.0)) + 32
  end

  def in_celsius
    return @c if @c
    (@f - 32) * 5.0 / 9.0
  end
end

class Celsius < Temperature  #subclasses leveraging method of super class
  def initialize temp
    super(c: temp)
  end
end

class Fahrenheit < Temperature
  def initialize temp
    super(f: temp)
  end
end
