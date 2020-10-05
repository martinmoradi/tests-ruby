def time_string(i)
  seconds = i % 60
  minutes  =  (i / 60) % 60 
  hours = i / 3600
  
  seconds = "%02d" % seconds
  minutes = "%02d" % minutes
  hours = "%02d" % hours  

  "#{hours}:#{minutes}:#{seconds}"
end

