require './test/minitest_helper'
require 'linkedlist'

class TestLinkedList < MiniTest::Test
  def setup
   @ll = LinkedList.new
  end

 def test_instance_of_linkedlist
  assert_instance_of LinkedList, @ll
 end

  def test_initial_values_are_nil
    assert_equal nil, @ll.head
  end

  def test_values_of_empty_node
   @node = LinkedList::Node.new
     assert_equal nil, @node.val
     assert_equal nil, @node.next
  end

  def test_insertion
    value = 5
    @ll.add(value)
    assert_equal 5, @ll.head.val
  end

  def test_insertion_of_two_values
    first_value = 10
    second_value = 5
    @ll.add(first_value)
    @ll.add(second_value)
    assert_equal 5, @ll.head.val
    assert_equal 10, @ll.head.next.val
  end

  def test_count_of_empty_linked_list
    assert_equal 0, @ll.count
  end

  def test_count_of_size_one_linked_list
    @ll.add(5)
    assert_equal 1, @ll.count
  end

  def test_count_of_size_three_linked_list
    @ll.add(5)
    @ll.add(10)
    @ll.add(15)
    assert_equal 3, @ll.count
  end

  def test_removal_of_value_of_empty_linked_list
    assert_equal nil, @ll.remove(5)
  end

  def test_removel_one_existing_value_in_linked_list
    @ll.add(5)
    assert_equal 5, @ll.remove(5)
    assert_equal 0, @ll.count
  end

  def test_removal_of_linked_list_size_2
    @ll.add(5)
    @ll.add(10)
    assert_equal 5, @ll.remove(5)
    assert_equal 1, @ll.count
    assert_equal 10, @ll.head.val
  end

  def test_removal_of_linked_list_size_3
    @ll.add(5)
    @ll.add(10)
    @ll.add(15)
    assert_equal 3, @ll.count
    assert_equal 10, @ll.remove(10)
    assert_equal 2, @ll.count
  end
end
