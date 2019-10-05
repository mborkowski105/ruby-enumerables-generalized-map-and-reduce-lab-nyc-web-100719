# Your Code Here
def map(array)
  new_array = []
  
  array.each do |a|
    new_array.push(yield(a))
  end
  
  return new_array
end

def reduce(array, start = 0)
  new_array = []
  
  array.drop(start).each do |a|
    new_array[0] = yield(a)
  end
end  
