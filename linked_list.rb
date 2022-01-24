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

    # * same as arrays, searching in linked list have O(N) time complexity 
     def index_of(value)
      current_node = first_node
      current_index = 0

      begin
        if current_node.data == value
          return current_index
        end
        current_node = current_node.next_node
        current_index += 1
      end while current_node
      return nil
    end

    def insert_at_index(index, value)
      # * create new node with given value
      new_node = Node.new(value)

      #  * insertion at begining
      if index == 0
        new_node.next_node = first_node
        self.first_node = new_node
      return
      end

      # * inserting anywhere other at begining
      current_node = first_node
      current_index = 0 
       while current_index < (index -1) do
         current_node = current_node.next_node
         current_index +=1
       end

       new_node.next_node = current_node.next_node
       current_node.next_node = new_node
    end

    def delete_at_index(index)
      if index == 0
        self.first_node = first_node.next_node
        return 
      end

      current_node = first_node
      current_index = 0

      while current_index < (index - 1) do
        current_node = current_node.next_node
        current_index += 1
      end
      node_after_deleted_node = current_node.next_node.next_node
      current_node.next_node = node_after_deleted_node
    end

end
# here we establish connection beetween LinkedList and Node class
link = LinkedList.new(node_1)

puts link
puts link.first_node
puts link.first_node.data
puts link.first_node.next_node

puts link.read(4)

# ! checking for possition of ' klub' in our linked list 
puts ("searching for 'klub': ")
puts link.index_of(' klub')
# => 2
puts link.read(link.index_of(' klub'))
# => ' klub'

# ! inserting on possition o
link.insert_at_index(0, "Partizan!")
puts link.read(0)

# ! inserting at any possition not start
puts link.read(2)
# => ' jedan'
link.insert_at_index(2, "Hello")
puts link.read(2)
# => 'Hello'
puts link.read(3)
# => ' jedan'

# ! deleting at begining
puts link.read(0)
# => Partizan!
link.delete_at_index(0)
puts link.read(0)
# => Samo
# ! deleting anywhere but begining
puts link.read(1)
# => Hello
link.delete_at_index(1)
puts link.read(1)
# => jedan

