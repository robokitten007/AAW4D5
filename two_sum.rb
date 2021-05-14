require 'byebug'
def bad_two_sum?(arr, target)
    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target
        end 
    end 
    false
end 

arr = [0, 1, 5, 7]
# puts bad_two_sum?(arr, 6) # => should be true
# puts bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr,target)
    arr.sort!
     sub_target = 0
    (0..arr.length-1).each do |i|
        sub_target = target - arr[i]
        return true if bsearch(arr[i+1..-1], sub_target, start = 0, finish = arr[i+1..-1].length) != nil
    end 
    false
end 

def bsearch(nums, target, start = 0, finish = nums.length)
  return nil if start == finish 
  mid = (finish - start) / 2 + start 
  case target <=> nums[mid] 
  when -1 
    bsearch(nums, target, start, mid) 
  when 0 
    mid 
  when 1
    bsearch(nums, target, mid + 1, finish)
  end
end 

arr = [0, 1, 5, 7]
# puts okay_two_sum?(arr, 6) # => should be true
# puts okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target)  # [1,2,3,4], target = 3
    hash = Hash.new
    arr.each do |ele|      
       return true if hash[target - ele]
        hash[ele] = target - ele
    end 
    debugger
    # hash.each do |k,v|
    #     return true if (hash[v] == k && k != v)
    # end 
    false
end     

arr = [0, 1, 5, 7]
# puts two_sum?(arr, 6) # => should be true
puts two_sum?(arr, 10) # => should be false