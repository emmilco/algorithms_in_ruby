# binary search (page 47)

def binary_search(arr, target, &comp)
  comp ||= Proc.new { |a,b| a <=> b }
  lo = 0
  hi = arr.length - 1
  while lo <= hi
    mid = (lo + hi) / 2
    case comp(arr[mid], target)
    when 0
      return mid
    when -1
      lo = mid + 1
    else
      hi = mid - 1
    end
  end
  -1
end
