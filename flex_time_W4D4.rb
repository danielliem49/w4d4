#What is the time complexity of the operations below?

arr = [1, 2, 3, 4, 5] 

arr.shift       # => O(n) because when we remove from the beginning of the array, all subsequent elements get re-indexed

arr.unshift(0)  # => O(n)

arr.pop         # => O(1) because when we remove from the end of the array, no elements are re-indexed

arr.push(6)     # => O(1)

arr.map         # => O(n) similar to .each, .all?, .select, .count, .sum, where we iterate through whole array

arr[2..4]       # => O(1) because we are hardcoding 2 and 4

arr[2..-1]      # => O(n) because the last index (-1) will change based on the input array

arr[3]          # => O(1) because indexing into specific position has constant time

arr.index(2)    # => O(n)

arr.delete_at(1)# => O(n) because all subsequent elements are re-indexed

arr.delete_at(4)# => O(1) because if we delete last element, there are no subsequent elements to re-index

###

# def two_sum?(arr, target_sum)
#   hash = Hash.new { |h, k| h[k] = [] }

#   arr.each do |ele|
#     complement = target_sum - ele
#     if hash[complement] == ele
#       return true
#     else
#       hash[ele] = complement
#     end
#   end

#   false
# end

# arr = [0, 5, 1, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

###

# bad version of longest_contigous_subsum:

# time complexity: O(n^3)
# space complexity: O(n^3)

def bad_contiguous_subsum(array)
  subs = []

  array.each_index do |idx1| # O(n)
    (idx1..array.length - 1).each do |idx2| # O(n/2) => O(n)
      subs << array[idx1..idx2] # O(n) because we slice the array
    end
  end

  subs.map { |sub| sub.inject(:+) }.max
end







