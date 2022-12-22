
require 'byebug'

def my_min_phase1(arr)
    min = arr[0]
    arr.each_with_index do |ele1, i|
        arr[(i + 1)..-1].each do |ele2|
            if ele1 < ele2 && ele1 < min
                min = ele1
            end
        end
    end
    min
end

def my_min_phase2(arr)
    min = arr[0]
    arr.each do |ele|
        if min > ele
            min = ele
        end
    end
    min
end
# list = [ -1, 3, 5, 4, -5, 10, 1, 90 ]
#  p my_min_phase1(list)  # =>  -5

 def lcs_phase1(arr)
      sums = []
        arr.each_with_index do |ele1, i|
            ((i + 1)...arr.length).each do |j|
                sums << arr[i..j]
            end
        end
        unsorted = sums.map {|subarr| subarr.sum}
        unsorted.sort[-1]
 end
 
#  def lcs_phase1(arr)
#     max_sum = 0

#     # debugger
#     arr.each_with_index do |ele1, i|
#         cumulative_sum = ele1
#         arr[(i + 1)..-1].each do |ele2|
#             cumulative_sum += ele2
#             if max_sum < cumulative_sum
#                 max_sum = cumulative_sum
#             end
#         end
#     end
#     max_sum
#  end
 

 def lcs_phase2(arr)
    largest_sum = 0
    

 end



 list = [2, 3, -6, 7, -6, 7]
 p lcs_phase1(list)