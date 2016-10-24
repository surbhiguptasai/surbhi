def translate(var1)
returnVal=""
splitString = var1.split(" ")
count=1
splitString.each do |value|
    returnVal=returnVal.concat(translate_per_word(value))
    ## Add Space as words had it initially
    if(count<splitString.length)
        returnVal=returnVal.concat(" ")
    end
   count=count+1   
end

returnVal

end

def translate_per_word(var1)
 var2="" 
## Apply Rule1 
if(var1.start_with?('a','e','i','o','u') )
  var2=var1.concat("ay")
  else
## Apply Rule2
    for pos in 0..var1.length - 1
    if(var1[pos].chr=='a' ||var1[pos].chr=='e'||var1[pos].chr=='i'||var1[pos].chr=='o'||
        (var1[pos].chr=='u' && var1[pos-1].chr!='q'))
        break;
    end
    end
    var2=var1[pos..-1].concat(var1[0..pos-1]).concat("ay")
end  
var2
end
