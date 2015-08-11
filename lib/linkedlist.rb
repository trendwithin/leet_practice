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
    end
  end

  Node = Struct.new(:val, :next)
end
