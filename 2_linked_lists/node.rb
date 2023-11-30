# frozen_string_literal: true

# Linked List

class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
  end

  def append(val)
    new = self.class.new(val)
    cursor = self
    cursor = cursor.next while cursor.next
    cursor.next = new
  end

  def to_s
    cursor = self
    values = []

    while cursor
      values << cursor.val
      cursor = cursor.next
    end

    values.join ' -> '
  end
end
