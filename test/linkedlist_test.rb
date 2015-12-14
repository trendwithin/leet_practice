require './test/minitest_helper'
require './lib/linkedlist'

class TestLinkedList < MiniTest::Test
  def setup
   @ll = LinkedList.new
  end

 def test_instance_of_linkedlist
  assert_instance_of LinkedList, @ll
  assert_equal nil, @ll.head
 end

 def test_value_of_node_struct
   node = LinkedList::Node.new
   assert_equal nil, @node
 end

  def test_adding_an_item
    @ll.add(5)
    assert_equal 5, @ll.head.val
  end

  def test_insertion_of_two_values
    @ll.add(5)
    @ll.add(10)
    assert_equal 10, @ll.head.val
    assert_equal 5, @ll.head.next.val
  end

  def test_deletion_of_empty_list
    assert_raises(RuntimeError, 'Empty List') { @ll.delete(7) }
  end

  def test_deletion_with_one_item_in_list
    @ll.add(5)
    @ll.delete(5)
    assert_equal nil, @ll.head
  end

  def test_deletion_with_two_elements_in_list
    @ll.add(5)
    @ll.add(10)
    assert_equal 5, @ll.delete(5)
    assert_equal 10, @ll.delete(10)
    assert_equal nil, @ll.head
  end

  def test_deleting_all_items_in_three_item_list
    @ll.add(6)
    @ll.add(7)
    @ll.add(8)
    assert_equal 7, @ll.delete(7)
    assert_equal 8, @ll.head.val
    assert_equal 6, @ll.head.next.val
    assert_equal 8, @ll.delete(8)
    assert_equal 6, @ll.delete(6)
  end

  def test_count_of_empty_linked_list
    assert_equal 0, @ll.count
  end

  def test_count_of_3_element_linked_list
    3.times { |i| @ll.add(i) }
    assert_equal 3, @ll.count
  end

  def test_search_an_empty_linked_list
    assert_equal nil, @ll.search(0)
  end

  def test_search_for_item_not_in_list
    @ll.add(5)
    assert_equal nil, @ll.search(7)
  end

  def test_search_for_existing_item_returns_value
    3.times { |i| @ll.add(i) }
    assert_equal 2, @ll.search(2)
  end
end
