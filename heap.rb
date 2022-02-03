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
    #* swap child node and parent node
            @data[new_node_index], @data[parent_index(new_node_index)] =  @data[parent_index(new_node_index)], @data[new_node_index]
    #* update index of the new node
            new_node_index = parent_node_index(new_node_index)
        end
    end

    #! deletion

    def delete
    #* we only delete root element of the heap and replace it with last element of the heap
        @data[0] = @data.pop
    #* we need to keep track of trickle nodes index (before deletion was last node, index=> @data.length - 1 and now is root node, index=> 0 ) 
        trickle_node_index = 0 
    #* we run loop as lonng as trickle_node has child node that is greater than him
        while has_greater_child(trickle_node_index)
            larger_child_index = cac_larger_child_index(trickle_node_index)
            @data[trickle_node_index], @data[larger_child_index] = @data[larger_child_index], @data[trickle_node_index]
            trickle_node_index = larger_child_index
        end
    end
    #! helper methods for deletion
#* we check if node has left/right children and if either of those is greater then the node at index
    def has_greater_child(index)
        (@data[right_child_index(index)] && @data[right_child_index(index)] > @data[index]) || (@data[left_child_index(index)] && @data[left_child_index(index)] > @data[index])
    end

    def cac_larger_child_index(index)
        if ! @data[right_child_index(index)]
            return left_child_index(index)
        end

        if @data[right_child_index(index)] > @data[left_child_index(index)]
            return right_child_index(index)
        else
            return left_child_index(index)
        end
    end
end