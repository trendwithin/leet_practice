class LinkedList
  attr_reader :head, :next

  def initialize
    @head = nil
  end

  def add val
    node = Node.new(val, nil)
    if @head.nil?
      @head = node
    else
      node.next = @head
      @head = node
    end
  end

  def delete val
    raise 'Empty List' if @head.nil?
    node = @head

    if node.val == val
      @head = node.next
      return val
    else
      until node.nil?
        if node.next.val == val
          node.next = node.next.next
          return val
        else
          node = node.next
        end
      end
    end
  end

  def count
    return 0 if @head.nil?

    count = 0
    node = @head
    until node.nil?
      count += 1
      node = node.next
    end
    count
  end

  def search val
    return nil if @head.nil?

    node = @head
    until node.nil?
      return val if node.val == val
      node = node.next
    end
    nil
  end
  
  Node = Struct.new(:val, :next)
end
