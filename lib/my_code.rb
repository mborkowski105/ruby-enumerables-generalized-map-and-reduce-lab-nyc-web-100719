# Your Code Here
def map(array)
  new_array = []
  
  array.each do |a|
    new_array.push(yield(a))
  end
  
  return new_array
end

def reduce(array, start = 0)
  accumulator = nil
  index = 0
  array.drop(start).each do |element|
    unless index == 0
      accumulator = yield(accumulator, element)
    end
    index += 1
  end
  accumulator
end  
