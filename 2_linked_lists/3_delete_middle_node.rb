# Delete Middle Node:
# Implement an algorithm to delete a node ni the middle (i.e., any node but the first and last node, not necessarily the exact middle)
# of a singly linked list, given only access to that node.
# EXAMPLE
# Input: the node `c` from the linked list a->b->c->d->e->f
# Result: nothing is returned, but the new linked list looks like a ->b->d->e->f Hints: #72

require_relative './node'

def delete_middle_node(node, value)
  raise "Cannot delete first position" if node.val == value

  position = find_by_value(node, value)
  delete_node(node, position)

  node
end

def find_by_value(cursor, value)
  position = 0

  while cursor
    break if cursor.val == value

    position += 1
    cursor = cursor.next
  end

  raise "Value not found" unless cursor
  raise "Cannot delete last position" unless cursor.next

  position
end

def delete_node(cursor, position)
  (position - 1).times do
    cursor = cursor.next
  end

  cursor.next = cursor.next.next
end

node = Node.new(1)
node.append(2)
node.append(3)
node.append(4)
node.append(5)

puts delete_middle_node(node, 3)
