# Data Structures
___
 ## Description 

This repository will be used as a place where I will practice newly learned data structures.

___
### Node-based data structure
**Node** pieces of data that may be dispersed throughout the computer's memory. Node-based data structures offer new way to organize and access data that provide a number of major performance advantages.
#### Linked List
Command to run this file: 
`ruby linked_list.rb`

- we can only move forward through the list
___

#### Doubly Linked List
Command to run this file: 
`ruby doubly_linked_list.rb`

- one variant of linked list
- each node keeps track of *next node* (as linked list does) but also *previous node*.
- keeps track of *first node* (as linked list) but also *last node*
- we can move both forward and backward through the list 
- insert data on either side at O(1)
- delete data on either side at O(1)
- perfect data structure for **queue**
___

#### Binary Heaps

**Heaps in general**
- tree data structure
- special data powers that can be leveraged when we need to keep track of greates or least data element in set
- Priority Queues (FIFO => first in first out) good implementation of heaps
<!-- ! found deletion hard to implement in ruby code -->
**Binary Heaps**
- they can be max-heap of min-heaps
- heap is binary tree if two conditions are maintained
    1. heap condition- value of each node must be greater than it's descendants (root node has the highest value)
    2. tree must be complete- tree is completely filled with nodes(no nodes are missing). Only in bottom row there can be empty positions as long as there aren't any nodes to the right of these empty positions
 


