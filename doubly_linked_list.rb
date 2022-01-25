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
