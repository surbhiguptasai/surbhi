class XmlDocument
    
 def initialize(indent = false)
        @indent = indent
end
    
def method_missing(method, hash=nil, &block)

         if (hash == nil && block == nil)
             if @indent
				"<#{method}/>\n  "
			 else
				"<#{method}/>"
		     end
			
         elsif hash.is_a?(Hash)
             #renders tag with attributes (from hash)
          
             my_key = nil
             my_val = nil
             hash.each do |key, value|
                 my_key = key
                 my_val = value

             end
             
             if @indent
				"<#{method}\n   #{my_key}=\"#{my_val}\"/>\n"
			else
				"<#{method} #{my_key}=\"#{my_val}\"/>"
			end
			
             "<#{method} #{my_key}=\"#{my_val}\"/>"
         else
             #passes whatever to between tags including nested methods.
                if @indent
				"<#{method}>\n  #{yield}</#{method}>\n"
			else
				"<#{method}>#{yield}</#{method}>"
			end

             
         end
end

end
