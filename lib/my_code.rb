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
  array.each do |element|
    unless ignore_first && index == 0
      accumulator = block.call(accumulator, element)
    end
    index += 1
  end
  accumulator
end  
