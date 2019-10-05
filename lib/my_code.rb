# Your Code Here
def map(array)
  new_array = []
  
  array.each do |a|
    new_array.push(yield(a))
  end
  
  return new_array
end

def reduce(array, start = 0)
  array[start..-1].each do |a|
    a = yield(a)
    puts a
  end
end  
