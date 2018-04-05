# selection sort (page 249)

def selection_sort(arr)
  result = arr.dup
  n = result.length
  n.times do |i|
    min = i
    (i+1...n).each do |j|
      min = j if result[j] < result[min]
    end
    result[i], result[min] = result[min], result[i]
  end
  return result
end

# insertion sort (page 251)

def insertion_sort(arr)
end
