require './test/minitest_helper'
require 'addtwo'

class TestAddTwo < MiniTest::Test
  def setup
    @first_list = LinkedList.new
    @first_list.add_node(1)
    @first_list.add_node(4)
    @first_list.add_node(6)

    @second_list = LinkedList.new
    @second_list.add_node(8)
    @second_list.add_node(3)
    @second_list.add_node(2)
  end

  def test_validity
    assert_instance_of LinkedList, @first_list
  end

  def test_value_in_list_returns_true
    assert true, @first_list.search(8)
  end

  def test_value_1_returns_true
    assert true, @first_list.search(1)
  end

  def test_value_not_in_list_returns_nil
    assert_equal nil, @first_list.search(10)
  end

  def test_base_case_of_two_linked_list_one_entity_each
    fl = LinkedList.new
    fl.add_node(1)
    sl = LinkedList.new
    sl.add_node(8)
    ll = AddTwo.new.add_two_numbers(fl, sl)
    found = ll.search(9)
    assert true, found
  end

  def test_edge_case_when_values_add_to_ten
    fl = LinkedList.new
    fl.add_node(9)
    sl = LinkedList.new
    sl.add_node(1)
    ll = AddTwo.new.add_two_numbers(fl, sl)
    found_1 = ll.search(1)
    found_0 = ll.search(0)
    assert true, found_1
    assert true, found_0
  end

  def test_value_carries_over_when_first_elements_greater_than_18
    fl = LinkedList.new
    fl.add_node(9)
    sl = LinkedList.new
    sl.add_node(9)
    ll = AddTwo.new.add_two_numbers(fl, sl)
    found_1 = ll.search(1)
    found_8 = ll.search(8)
    assert true, found_1 && found_8
  end

  def test_three_elements_return_8_7_9
    ll = AddTwo.new.add_two_numbers(@first_list, @second_list)
    found_8 = ll.search(8)
    found_7 = ll.search(7)
    found_9 = ll.search(9)
    assert true, found_8 && found_7 && found_9
  end

  def test_order_or_elements
    ll = AddTwo.new.add_two_numbers(@first_list, @second_list)
    nl = LinkedList.new
    nl.add_node(8)
    nl.add_node(7)
    nl.add_node(9)
    assert true, ll.equal?(nl)
  end
end
