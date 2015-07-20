# Given two linked list (non-negative numbers). Digits stored in reverse order
# and each node contains a single digit.  Add the two numbers and return it as
# a linked list.
# i.e.  Input: (2 -> 4 -> 3) + (5 -> 6-> 4)  Output: 7 -> 0 -> 8

class AddTwo
  def initialize
    @values = []
    @carry_over = 0
  end
  
  def add_two_numbers(l1, l2)
    node = l1.head
    node2 = l2.head
    values_to_array(node, node2)
    ll = LinkedList.new
    @values.each_slice(2) do |a|
      val = a.inject(:+)
      if val == 10
        # push 0 and carry the 1
        ll.add_node(ListNode.new(0))
        @carry_over = 1
      elsif val > 10
        ll.add_node(ListNode.new(val - 10))
        @carry_over = 1
      else
        ll.add_node(ListNode.new(val))
        @carry_over = 0
      end
    end
    ll.add_node(ListNode.new(@carry_over)) if @carry_over > 0
    ll
  end

  def values_to_array(node, node2)
    until node.nil? && node2.nil?
      @values.push(node.val, node2.val)
      node, node2 = node.next, node2.next
    end
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @next = nil
  end

  def add_node(val)
    node = ListNode.new(val)
    if @head.nil?
      @head = node
    else
      node.next = @head
      @head = node
    end
  end

  def search(val)
    node = @head
    until node.next.nil?
      return true if node.val == val
      node = node.next
    end
    nil
  end

  def size
    node = @head
    count = 0
    until node.nil?
      count += 1
      node = node.next
    end
    count
  end
end # class

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end
