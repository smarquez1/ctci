# 1. *Remove Dups*:
# Write code to remove duplicates from an unsorted linked list.
#
# FOLLOW UP:
# How would you solve this problem if a temporary buffer is not allowed?

# iterate the linked list and store the values in a hash table

require './linked_list.rb'

def remove_dups(node)
  node
end

n = Node.new(0) # head

10.times do |i|
  n.next = Node.new(i+1)
  n = n.next
end

puts n
