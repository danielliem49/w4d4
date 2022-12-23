def windowed_max_range(arr, w)
current_max_range = 0
    arr.each_cons(w) do |window|
        # p window
        range = window.max - window.min
        if range > current_max_range
          current_max_range = range
        end
    end

current_max_range
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5

  class MyQueue
    def initialize
      # create ivar to store queue here!
      @queue = []
    end

    def enqueue(el)
      # adds an element to the queue
      @queue << el
    end

    def dequeue
      # removes one element from the queue
      @queue.shift
    end

    def peek
      # returns, but doesn't remove, the top element in the queue
      @queue[-1]
    end

    def size
      @queue.length
    end
  end

  
  
  class MyStack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end

    def size
      @stack.length
    end
  end

  class StackQueue

    def initialize
      @queue = []
      @input = MyStack.new
      @output = MyStack.new
    end

      def enqueue(el)
      # adds an element to the queue
      @input.push(el)
      
    end

    def dequeue
      # removes one element from the queue
      @output.pop
    end

    def size
      @input.length + @output.length
    end

  
  end

  class MinMaxStack

  end

  class MinMaxStackQueue

  end

  

