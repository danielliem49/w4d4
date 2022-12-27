require 'byebug'

def bad_two_sum?(arr, target)
    pairs = arr.permutation(2).to_a
    pairs.any?{|pair| pair.sum == target}
end
#O(n^2) quadratic time
#O(1) constant space


# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
    sorted = arr.sort
    mid = sorted.length / 2
    
    return false if sorted.length == 1
    return true if sorted[mid] + sorted[mid - 1] == target

    left = sorted.take(mid)
    right = sorted.drop(mid)

    debugger
    if sorted[mid] + sorted[mid - 1] > target
        okay_two_sum?(left, target)
    else
        if okay_two_sum?(right, target) == false
            return false
        else
            okay_two_sum?(right, target)
        end
    end
   
end
#O(nlogn) linearithmic time
#O(n) linear space


# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target)
    complements = {}
    arr.each do |ele|
        debugger
        complements[ele] = true
        return true if complements[target - ele]
    end
    false
end
#O(n) linear time
#O(n) linear space

arr = [0, 1, 7, 5]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

