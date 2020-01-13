def map(source_array)
  arr = []
  i = 0
  while i < source_array.length
    arr << (yield(s[i]))
    i += 1
  end
  return arr
end

def reduce(source_array, sp=nil)
  if sp
    sum = sp
    i = 0
  else
    sum = source_array[0]
    i = 1
  end
  while i < source_array.length
    sum = yield(sum, source_array[i])
    i += 1
  end
  return sum
end
