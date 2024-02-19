# 5. *Sum Lists*:
# You have two numbers represented by a linked list,
# where each node contains a single digit.
# The digits are stored in reverse order,
# such that the Vs digit is at the head of the list.
# Write a function that adds the two numbers and returns the sum as a linked list.
#
# ```
# EXAMPLE
# Input: (7-> 1 -> 6) + (5 -> 9 -> 2).That is,617 + 295.
# Output: 2 -> 1 -> 9. That is, 912.

require_relative './node'
def sum_lists(list1, list2)
  cursor = list1

  while list1
    if list1.next
      tmp = list1.next

      list1.next = tmp
      list1 = tmp
    end

    list1 = list1.next
  end

  puts list1
end

list1 = Node.new 7
list1.append 1
list1.append 6

list2 = Node.new 5
list2.append 9
list2.append 2

puts sum_lists(list1, list2)
