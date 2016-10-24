class Book
  def title=(t)
      k=[] # Empty Array to be used to contain values
      splitwords=t.split(" ") #Split each title string word by word
      excludeWords=["a","an","and","in","the","of"] # Array that contains list of words to be excluded
      splitwords.each_with_index do |word,index| # Iterating over words and using index as well to captitalize first word
         if((!excludeWords.include? word) || index==0) #condition on when to captilaize
           k.push(word.capitalize)
       else
           k.push(word)
      end
     
  end
    @title=k.join(" ")  #join back all words and set in title
  end

  def title
    @title
  end
end
