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
        return (2 * index) + 2
    end

    def parent_index(index)
        return (index - 1) / 2
    end

    def left_child(node)
        index = @data.index(node)
        return @data[2 * index + 1]
    end

    def right_child(node)
        index = @data.index(node)
        return @data[index * 2 + 2]
    end
end