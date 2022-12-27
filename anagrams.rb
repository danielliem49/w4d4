def first_anagram?(str1, str2)
    str1_chars_permutations = str1.split("").permutation(str2.length).to_a
    str1_anagrams = str1_chars_permutations.map {|word| word.join}
    str1_anagrams.include?(str2)
end
# O(n!)

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2) #elvis , lives
    str2_arr = str2.split("") 
    str1.each_char do |ele|
        j = str2_arr.index(ele)
        if j == nil
            return false
        end
        str2_arr.delete_at(j)
    end
    str2_arr.length == 0
end
# O(n^2)

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


def third_anagram?(str1, str2)

    str1_indices = string_to_index(str1)
    str2_indices = string_to_index(str2)

    str1_sorted = merge_sort(str1_indices)
    str2_sorted = merge_sort(str2_indices)

    if str1_sorted == str2_sorted
        return true
    end
    false
end
#  O(nlogn)

                        def string_to_index(str)
                            result = []
                            alpha = ("a".."z").to_a
                            str.each_char do |ele|
                                result << alpha.index(ele)
                            end
                            result
                        end

                        def merge_sort(arr, &prc)
                        prc ||= Proc.new {|a,b| a <=> b}

                        mid = arr.length / 2
                        return arr if arr.length < 2
                        left = arr.take(mid)
                        right = arr.drop(mid)

                        left_sorted = merge_sort(left, &prc)
                        right_sorted = merge_sort(right, &prc)

                            merge(left_sorted, right_sorted, &prc)
                        end

                        def merge(left, right, &prc)
                            merged = []
                                until left.empty? || right.empty?
                                    if prc.call(left[0], right[0]) == -1
                                        merged << left.shift
                                    else
                                        merged << right.shift
                                    end
                                end
                            merged + left + right
                        end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true
# p third_anagram?("julko", "okujl")

def fourth_anagram?(str1, str2)
    count1 = Hash.new(0)
    count2 = Hash.new(0)

        str1.each_char do |char|
            count1[char] += 1
        end

        str2.each_char do |char|
            count2[char] += 1
        end

    count1 == count2
end
# O(n)

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true