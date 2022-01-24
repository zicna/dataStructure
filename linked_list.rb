class Node
    attr_accessor :data, :next_node

    def initialize(data)
      @data = data
    end
end
# *  data method returns the node data 
# * next_node method returns the next node in the link, it serves as node link
## * it points to another Node instance rather than an actual memory address number

node_1 = Node.new("Samo")
node_2 = Node.new(" jedan")
node_3 = Node.new(" klub")
node_4 = Node.new(" samo")
node_5 = Node.new(" Partizan!")

node_1.next_node = node_2
node_2.next_node = node_3
node_3.next_node = node_4
node_4.next_node = node_5

puts node_1.data
puts node_1.next_node.data
puts node_1.next_node.next_node.data
puts node_1.next_node.next_node.next_node.data
puts node_1.next_node.next_node.next_node.next_node.data
# to run just navigate to folder where file is and in terminal run:
# ruby linked_list.rb

class LinkedList

    attr_accessor :first_node

    def initialize(first_node)
      @first_node = first_node
    end
    # * reading form linked list data is O(N) time complexity
    def read(index)
        current_index = 0
        current_node = first_node

        while current_index < index
            current_node = current_node.next_node
            current_index += 1
            return nil unless current_node
        end
        return current_node.data
    end


    
end
# here we establish connection beetween LinkedList and Node class
link = LinkedList.new(node_1)

puts link
puts link.first_node
puts link.first_node.data
puts link.first_node.next_node

puts link.read(4)