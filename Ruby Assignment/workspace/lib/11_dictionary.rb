class Dictionary
  # TODO: your code goes here!
  
 def initialize
        @hash = {}
    end

    def entries
        @hash
    end

    #add method to add a keyvalue
    def add(keyvalue)
        if keyvalue.is_a? String
            @hash[keyvalue] = nil
        else
            keyvalue.each do |key, value|
                @hash[key] = value  #create key-value pair in @hash
            end
        end
    end

    #method to get the keywords in the Dictionary
    def keywords
        @key_array = []
        @hash.each {|key,value| @key_array.push(key)}   #push key inside key_array
        return @key_array.sort
    end

    #method to determine if key exists in @hash
    def include?(key)
        yes = false     #assume that the key is not included in @hash
        if key.is_a? String
            @hash.each do |a,b|
                if a == key
                    yes = true  #then if key is included in @hash key then reset it to true
                end
            end
            return yes  #return yes
        end

        
    end

    #method to find a matching keyword
    def find(str)
        found_hash = {} #start with an empty hash
        if str.is_a? String
            @hash.each do |key,value|
                if key[0...str.length] == str   #key[0...str.length] equates to characters from length 0 to str.length
                    found_hash[key] = value     #create new hash if statement is true
                end
            end
            return found_hash
        end
    end
 def printable
        str = ""
        @hash.sort.each_with_index  do |(key, value),index|
            str = str+"["+key+"]"+" "+"\""+value+"\""
            if index != @hash.size - 1
              str=str+"\n"
            end
            
    
        end
        return str

 end
   
  
end
