class Heap
    def initialize
        @data = []
    end

    def root_node
        @data.first
    end

    def last_node
        @data.last
    end

    def left_child_index(index)
        return (2 * index) +1
    end

    def right_child_index(index)
        return (2 * index) + 1
    end
end