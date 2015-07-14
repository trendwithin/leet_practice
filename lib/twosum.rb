#  Given an array of integers, find two numbers such that they add up to a
#  specified target and val 1 < val 2
class TwoSum
  def two_sum vals, target
    return 'Array Elements Must Be Fixnum' unless vals.all? { |v| v.is_a? Fixnum }

    length = vals.length
    vals.each_with_index do |v, i|
      if i == length - 1
        return 'No Intended Target'
      elsif v + vals[i + 1] == target && v < vals[i + 1]
        return "index1=#{i}, index2=#{i + 1}"
      end
    end
  end
end
