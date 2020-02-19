def map(array)
  new_array = []
  index = 0 
  while index < array.length do 
    
    new_array << yield(array[index])
    index += 1
    
  end 
  new_array
end


def reduce(array,start=0)
  total = 0 
  index = 0 
  if start != nil 
    
    while index < array.length do 
      puts "total is #{total}"
      puts "array @ idnex is #{array[index]}"
      total += yield(array[index])
      index += 1 
    end 
  
  else 

  
  end 
  total 
end 
