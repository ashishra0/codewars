def anagram_detection(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end
