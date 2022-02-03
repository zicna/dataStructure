class Heap

    #! basic methods
    def initialize
        @data = []
    end

    def root_node
        @data.first
    end

    def last_node
        @data.last
    end

    #! left/right child nodes , parent and indexes

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

    #! insertion

    def insert(value)
    # * insert as last node
        @data << value
    #* keep track of the last inserted node
        new_node_index = @data.length - 1
    #* trickle up algorithm
    #* condition: while new_node_index > 0 and parent node < new_node
    while new_node_index > 0 && @data[new_node_index] < @data[parent_index(new_node_index)] 
    # * swap child node and parent node
        @data[new_node_index], @data[parent_index(new_node_index)] =  @data[parent_index(new_node_index)], @data[new_node_index]
    # * update index of the new node
        new_node_index = parent_node_index(new_node_index)
    end
    end
end