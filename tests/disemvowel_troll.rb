# Disemvowel Trolls
# problem statement: write a function that takes a string and return a new string with all vowels removed.

require "minitest/autorun"

class Vowel
  def disemvowel(str)
    new_str = str.gsub! (/[aAeEiIoOuU]/),""
  	return new_str
  end
end



class TestVowel < Minitest::Test
  def setup
    @vowel = Vowel.new
  end

  def test_that_string_has_no_vowels
    assert_equal "Ths wbst s fr lsrs LL!", @vowel.disemvowel("This website is for losers LOL!")
    assert_equal "Ths cd s bslt bllsht! hh!", @vowel.disemvowel("This code is absolute bullshit! haha!")
    assert_equal "Sy smthng mn, pls!", @vowel.disemvowel("Say something man, please!")
  end  
end

