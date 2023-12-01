# 2.  *Return Kth to Last*:
# Implement an algorithm to find the kth to last element of a singly linked list.

require_relative 'node'

def kth_to_last(node, i)
  cursor = node
  (i-1).times { cursor = cursor.next }

  cursor
end

node = Node.new(1)
node.append(2)
node.append(3)
node.append(4)
node.append(5)

kth = kth_to_last(node, 3)
puts kth
