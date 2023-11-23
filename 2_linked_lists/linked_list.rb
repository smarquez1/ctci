# frozen_string_literal: true

# Linked List

class LinkedList
  class Node
    attr_accessor :val, :next

    def initialize(val)
      @val = val
    end
  end

  def append(val)
    last = Node.new(val)

    if @head.nil?
      @head = last
    else
      cursor  = @head
      cursor = cursor.next unless cursor.next.nil?
      cursor.next = last
    end
  end

  def delete; end

  def remove_dups
    # WIP
    hash = {}

    cursor= @head
    cursor = cursor.next unless cursor.next.nil?
  end

  def to_s
    str = ''
    cursor= @head

    while cursor.next
      puts cursor.val
      puts cursor.next.val
      str += "#{cursor.val} -> "
      cursor = cursor.next
    end

    str + 'nil'
  end
end

l = LinkedList.new
l.append(1)
l.append(2)
l.append(8)
l.append(2)
l.append(3)
l.append(4)
# l.delete(8)
# l.remove_dups

puts l
