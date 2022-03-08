class Stack

    def initialize
        @data = []
    end

    def add(node)
        @data << node
    end

    def remove
        @data.pop
    end

    def size
        @data.length
    end

    def read
        @data.last
    end

    def search(node)
        @data.each_with_index do |element, index|
            if element == node
                return index
            end
        end
        false
    end
end

new_stack = Stack.new

new_stack.add(1)
new_stack.add(11)
new_stack.add(111)
new_stack.add(1111)
new_stack.add(11111)
new_stack.add(111111)
new_stack.remove

puts new_stack.read