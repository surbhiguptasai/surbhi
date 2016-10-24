class Timer

     def initialize(seconds = 0) #initilize seconds to zero
        @seconds = seconds
    end
    
    def seconds=(new_sec=0)
        @seconds = new_sec
    end

    def seconds
        @seconds
    end
   
   def time_string
         hh = @seconds/3600
         mm = @seconds%3600/60
         ss = @seconds%60
         hh="%.2i" %hh  # formatting string to take care of zero
         mm="%.2i" %mm
         ss="%.2i" %ss
               
        @time_string = "#{hh}:#{mm}:#{ss}" 
    end


end