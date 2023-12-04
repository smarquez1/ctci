# 4. *Partition*:
# Write code to partition a linked list around a value x,
# such that all nodes less than x come before all nodes greater than or equal to x.
# If x is contained within the list,
# the values of x only need to be after the elements less than x (see below).
# The partition element x can appear anywhere in the "right partition";
# it does not need to appear between the left and right partitions.

# ```
# EXAMPLE
# Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1[partition=5]
# Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8
# ```

require_relative './node'

def partition(head, value)
  cursor = head

  while cursor
    if cursor.next && cursor.next.val < value
      tmp = cursor.next # save next node
      cursor.next = cursor.next.next # delete next node from current list
      
      # move deleted node first
      tmp.next = head # next node after the deleted one is the head of the list
      head = tmp # list start now points to deleted note
    else
      cursor = cursor.next # continue iterating
    end
  end

  head
end

node = Node.new 3
node.append 5 
node.append 8
node.append 5
node.append 10
node.append 2
node.append 1

puts partition node, 5
