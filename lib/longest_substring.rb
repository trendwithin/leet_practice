# Given a string, find the length of the longest substring  without repeating
# characters.
# Input: 'abcabcbb' Result: 3 ('abc'), Input: 'bbbbbb' Result: 1 ('b')
class LongestSubstring
  def length_of_longest_substring(s)
    return 1 if s.length == 1 || s.chars.to_a.uniq.length == 1
    sequences = break_apart(s)
    duplicates = sequences.select { |e| sequences.count(e) > 1 }.uniq
    longest = duplicates.sort_by(&:length)
    longest.last.size
  end

  def break_apart(s)
    seq_char_combinations = []
    len = s.length
    (0...len).each do |charma|
      (charma...len).each do |dharma|
        seq_char_combinations << s[charma..dharma]
      end
    end
    seq_char_combinations
  end
end
