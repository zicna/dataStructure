class Node
    attr_accessor :data, :next_node, :previous_node

    def initialize(data)
        @data = data
    end
end

class DoublyLinkedList
    attr_accessor :first_node, :last_node

    def initialize(first_node=nil, last_node=nil)
        @first_node = first_node
        @last_node = last_node
    end

    def insert_at_end(value)
        new_node = Node.new(value)

        if !first_node
            @first_node = new_node
            @last_node = new_node
        else
            new_node.previous_node = @last_node
            @last_node.next_node = new_node
            @last_node = new_node
        end
    end

    def remove_form_front
        removed_node = @first_node
        @first_node = @first_node.next_node
        return removed_node
    end
end

class Queue

    attr_accessor :queue

    def initialize
        @data = DoublyLinkedList.new
    end

    def enqueue(element)
        @data.insert_at_end(element)
    end

    def dequeue
        removed_node = @data.remove_from_front
        return removed_node.data
    end

    def read
        return nil unless @data.first_node
        return @data.first_node.data
    end
end



# * example:
# * creating doubly linked list

node_1 = Node.new("Bozic")
node_2 = Node.new("McCaleb")
node_3 = Node.new("Kecman")
node_4 = Node.new("Rasic")
node_5 = Node.new("Bogdanovic")

node_1.next_node = node_2
node_1.previous_node = nil

node_2.next_node = node_3
node_2.previous_node = node_1

node_3.next_node = node_4
node_3.previous_node = node_3

node_4.next_node = node_5
node_4.previous_node = node_3

node_5.next_node = nil
node_5.previous_node = node_4

puts("#{node_1.data}", "#{node_1.next_node.data}", "#{node_1.previous_node}")
