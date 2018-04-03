# binary search (page 47)

def binary_search(arr, target, &comp)
  comp ||= Proc.new { |a,b| a <=> b }
  lo = 0
  hi = arr.length - 1
  while lo <= hi
    mid = (lo + hi) / 2
    case comp.call(arr[mid], target)
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

# coin toss simulator (page 70)

def flips(n)
  heads = 0
  tails = 0
  n.times { rand(2).odd? ? heads+= 1 : tails += 1 }
  puts "#{heads} heads"
  puts "#{tails} tails"
  puts "#{(tails - heads).abs} delta"
end

# die roll simulator (page 72)

def rolls(n)
  results = Array.new(6, 0)
  n.times { results[rand(6)] += 1}
  results.each.with_index { |x,i| puts "#{x} #{i+1}'s"}
end


# palindrome checker (page 81)

def palindrome?(str)
  (str.length / 2).times do |i|
    return false if str[i] != str[-1 - i]
  end
  true
end

# counter class (page 85)

class Counter
  def initialize(name)
    @name = name
    @count = 0
  end

  def increment
    @count += 1
  end

  def tally
    @count
  end

  def to_s
    "#{@count} #{@name}"
  end
end
