def map(array)
  new_array = []
  index = 0 
  while index < array.length do 
    
    new_array << yield(array[index])
    index += 1
    
  end 
  new_array
end


def reduce(array,start=nil)
  total = 0 
  index = 0 
  while index < array.length do 
    
    total += yield(array[index])
    index += 1 
  end 
  if start != nil 
    total += yield(start)
  end 
  total 
end 
