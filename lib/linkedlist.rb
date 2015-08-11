class LinkedList
  attr_accessor :next
  def initialize
    @head = nil
    @next = nil
  end

  def add(value)
    node = Node.new(value, nil)
    if @head.nil?
      @head = node
    else
      node.next = @head
      @head = node
    end
  end

  def count
    node_count = 0
    node = @head
    until node.nil?
      node_count += 1
      node = node.next
    end
    node_count
  end

  Node = Struct.new(:val, :next)
end
