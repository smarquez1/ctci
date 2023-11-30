# 1. *Remove Dups*:
#
# Write code to remove duplicates from an unsorted linked list.
#
# FOLLOW UP:
# How would you solve this problem if a temporary buffer is not allowed?

require_relative './node'

def dedup(node)
  cursor = node
  values = Set.new []

  while cursor.next
    values << cursor.val

    if values.include? cursor.next.val
      cursor.next = cursor.next.next
    else
      cursor = cursor.next
    end
  end
end

x = Node.new(1)
x.append(2)
x.append(3)
x.append(4)
x.append(5)
x.append(2)
x.append(3)
x.append(4)
x.append(2)
x.append(1)

puts 'Initial list'
puts x

puts 'Remove duplicates'
dedup(x)
puts x
