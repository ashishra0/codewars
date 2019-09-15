# Counting Duplicates
# Problem Statement: Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digit

require "minitest/autorun"
class Duplicate
  def duplicate_count(text)
    result = text.split("")
    result.group_by{ |elem| elem && elem.upcase}.select{|key,val| val.length > 1 }.keys.count
  end
end

class TestDuplicate < Minitest::Test
  def setup
    @duplicate = Duplicate.new
  end

  def test_that_duplicate_count_is_returned
    assert_equal 0, @duplicate.duplicate_count("abcde")
    assert_equal 1, @duplicate.duplicate_count("abcdeaa")
    assert_equal 2, @duplicate.duplicate_count("abcdeaB")
    assert_equal 2, @duplicate.duplicate_count("Indivisibilities")
  end
end
