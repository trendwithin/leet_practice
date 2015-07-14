require './test/minitest_helper'
require 'twosum'

class TestTwoSum < MiniTest::Test

  def setup
    @ts = TwoSum.new
  end

  def test_valid_object
    assert_instance_of TwoSum, @ts
  end

  def test_a_mixed_array_is_invalid
    values = [1, 3, 8, '9']
    target = 4
    assert_equal "Array Elements Must Be Fixnum", @ts.two_sum(values, target)
  end

  def test_array_of_size_two_returns_true
    values = [1, 3]
    target = 4
    assert_equal "index1=0, index2=1", @ts.two_sum(values, target)
  end

  def test_array_of_size_three_returns_true
    values = [1, 2, 3]
    target = 5
    assert_equal "index1=1, index2=2", @ts.two_sum(values, target)
  end

  def test_array_of_size_three_with_correct_values_in_0_1_index
    values = [1, 2, 3]
    target = 3
    assert_equal "index1=0, index2=1", @ts.two_sum(values, target)
  end

  def test_array_of_size_four_with_no_target
    values = [ 1, 2, 3, 5]
    target = 10
    assert_equal "No Intended Target", @ts.two_sum(values, target)
  end

  def test_higher_value_before_lower_value_has_no_target
    values = [2, 1]
    target = 3
    assert_equal "No Intended Target", @ts.two_sum(values, target)
  end

  def test_an_array_with_multiple_targets_returns_only_one
    values = [1, 2, 2, 1]
    target = 3
    assert_equal "index1=0, index2=1", @ts.two_sum(values, target)
  end
end
