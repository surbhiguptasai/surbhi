def echo(str)
    str
end 

def shout(str)
    shoutstr=str.upcase
    shoutstr
end 

def repeat(var1, var2=2)
   resultstr=""
   for i in 1..var2
   resultstr+=var1
   if(i<var2) 
       resultstr+=" "
    end
   end
   
   resultstr
end

def start_of_word(var1, var2)
    resultStr=var1[0,var2]
    resultStr
end

def first_word(var1)
    resultStr=var1.split.first
    resultStr
    
end


def titleize(var1)
    var1.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and",  "the", "over"]
    capWord = var1.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ")
  capWord  # returns the capWord with all the excluded words
end


