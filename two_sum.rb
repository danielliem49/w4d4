require 'byebug'

def bad_two_sum?(arr, target)
    pairs = arr.permutation(2).to_a
    pairs.any?{|pair| pair.sum == target}
end
# O(n!)

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
# O(nlogn)


# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target)
    hash = Hash.new(0)
    arr.each_with_index do |ele, i|
        hash[i] = ele
    end
    i = 0
    while i < arr.length - 1
            if  target == hash[i] + hash[i + 1]
                return true
            end
        i += 1
    end
    return false
end
# O(n)

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

