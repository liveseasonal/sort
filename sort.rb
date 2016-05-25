#See notes for a break down and an example

# 1st iteration
# x = 0
# y = 1..4

# 2nd iteration
# x = 1
# y = (1+1)= 2..4

# 3rd iteration
# x = 2
# y = 3..4

# Sort the array from lowest to highest
def sort(arr)
  # arr.sort
  for x in 0..arr.length-1
    for y in (x+1)..arr.length-1
      if (arr[x]>arr[y])
        tmp = arr[x]
        arr[x] = arr[y]
        arr[y] = tmp
      end
    end
  end
  return arr
end

# Find the maximum 
def maximum(arr)
  sort(arr).last
end

def minimum(arr)
  sort(arr).first
end
 
# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = minimum([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

 
# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"
result = minimum([])
puts "min on empty set is: #{result.inspect}"
 
result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"
 
result = maximum([6])
puts "max of just 6 is: #{result}"