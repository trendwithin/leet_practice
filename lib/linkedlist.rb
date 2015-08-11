class LinkedList

  def initialize
    @head = nil
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

  def remove(val)
    return nil if @head.nil?
    node = @head
    del_node = nil

    if node.val == val
      del_node = @head.val
      @head = @head.next
      return del_node
    else
      until node.nil?
        if node.next.val == val
          del_node = node.next.val
          node.next = node.next.next
          return del_node
        end
      end
    end
    del_node
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

  def search(val)
    node = @head

    until node.nil?
      return node.val if node.val == val
      node = node.next
    end
    nil
  end

  Node = Struct.new(:val, :next)
end

