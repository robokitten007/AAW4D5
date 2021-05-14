def max_windowed_range(arr, w)
    sub_arr = []
    current_max_range = 0
    max = 0
    min = 0

    (0..arr.length - w).each do |i|
        sub_arr = arr[i...(i + w)]
        max = sub_arr.max
        min = sub_arr.min
        current_max_range = max - min if max - min > current_max_range
    end
    current_max_range
end

# puts max_windowed_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# puts max_windowed_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# puts max_windowed_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# puts max_windowed_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

class MyQueue
    def initialize
      @store = []
    end

    def peek
        p @store.first
    end

    def size
        @store.length
    end

    def empty?
        @store.empty?
    end

    def enqueue(ele)
        @store << ele
    end

    def dequeue
        @store.shift
    end
  end

  

  class MyStack
    def initialize
      @store = []
    end


  end