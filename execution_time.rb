
def my_min(arr)

  smallest = arr[0]

  arr.each do |el1|
    arr.each do |el2|
      case el1 <=> el2
      when -1
        smallest = el1 if el1 < smallest
      when 0 
        smallest = el1 if el1 < smallest
      when 1
        smallest = el2 if el2 < smallest
      end
    end
  end
  smallest

end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# my_min(list)  # =>  -5


def better_my_min(arr)
  # smallest = arr[0]
  # arr.each do |el|
  #   smallest = el if el < smallest
  # end
  # smallest

  arr.inject do |min, num|
    if num < min
      num
    else
      min
    end
  end
end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p better_my_min(list)  # =>  -5


def largest_contiguous_subsum(arr)
  subsums = []

  (0...arr.length).each do |idx1|
    (idx1...arr.length).each do |idx2|
      subsums << arr[idx1..idx2]
    end
  end
  p subsums

  subsums.map! { |sub| sub.sum }

  subsums.max
end

# list = [2, 3, -6, 7, -6, 7]
# list2 = [-5, -1, -3]
# p largest_contiguous_subsum(list)
# p largest_contiguous_subsum(list2)

def hard_subsum(arr)
  sum = 0
  max = arr[0]
  arr[0..-1].each do |el|
    if sum + el > max
      max = sum + el
      sum += el
    else
      sum += el
    end
    
      if sum < 0
        sum = 0
      end

  end
  max
end

# list = [2, 3, -6, 7, -6, 7]
# list = [5, 3, -7]
list = [-5, -1, -3]
p hard_subsum(list) # => 8 (from [7, -6, 7])

# arr = [2, 1, 2, -4, 3]

