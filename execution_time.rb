require 'byebug'
#phase I

# def my_min(arr)
#     res = 0
#  (0...arr.length-1).each do |i|
#     (i+1...arr.length).each do |j|
#         if arr[i] < arr[j] && arr[i] < res
#             res = arr[i]
#         end 
#     end 
#  end 
#  res
# end 

#    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#    puts my_min(list)
#phase II

def my_min(arr)
    res = 0
    (0...arr.length-1).each do |i|
        if arr[i] < arr[i+1] && arr[i] < res
            res = arr[i]
        end 
    end 
    res
end 

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#    puts my_min(list)

#phase I
def sub_sum(arr)
    sub_arr = []
    result = []
    res = []
    
    (0..arr.length-1).each do |i|
        sub_arr = []
        (i..arr.length-1).each do |j|
            if j >= i
            sub_arr = arr[i..j]
            result << sub_arr
            end 
        end 
    end 
    # debugger
    result.each do |sub_arr|
        res << sub_arr.sum
    end 
    res.max
end 

 list = [-5, -1, -3]
  puts sub_sum(list)

  #phase II
  def largest_contiguous_subsum(arr)
    large_sum = arr.max
    current_sum = 0
    (0..arr.length-1).each do |i|
        current_sum = arr[0..i].sum
        large_sum = current_sum if current_sum > large_sum
    end 
    (0..arr.length-1).each do |i|
        current_sum = arr[i..-1].sum
        large_sum = current_sum if current_sum > large_sum
    end 
    large_sum
  end 