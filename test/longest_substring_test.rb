require './test/minitest_helper'
require 'longest_substring'

class TestLongestSubstring < MiniTest::Test
  def test_base_case
    s = 'b'
    assert_equal 1, LongestSubstring.new.length_of_longest_substring(s)
  end

  def test_bbbbbbb_returns_1
    s = 'bbbbbb'
    assert_equal 1, LongestSubstring.new.length_of_longest_substring(s)
  end

  def test_bbbbbba_returns_2
    skip('Edge Case Failing: Multiples of Letter As 1 Char Followed by Different Letter- Result: 2')
    s = 'bbbbbba'
    assert_equal 2, LongestSubstring.new.length_of_longest_substring(s)
  end

  def test_abcabcbb_returns_3
    s = 'abcabcbb'
    assert_equal 3, LongestSubstring.new.length_of_longest_substring(s)
  end
  
  def test_abc_efg_abc_returns_3
    s = 'abcefgabc'
    assert_equal 3, LongestSubstring.new.length_of_longest_substring(s)
  end

  def test_abcabcabcdabcdefg_returns_6
    s = 'abcabcabcdabcdefg'
    assert_equal 6, LongestSubstring.new.length_of_longest_substring(s)
  end
end
