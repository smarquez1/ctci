# 1. 4.
# *Palindrome Permutation*:
# Given a string, write a function to check if it is a permutation of a palindrome.
# A palindrome is a word or phrase that is the same forwards and backwards.
# A permutation is a rearrangement of letters.
# The palindrome does not need to be limited to just dictionary words.
#
# ```
# EXAMPLE
# Input: Tact Coa
# Output True (permutations: "taco cat", "atco eta", etc.)
# ```
# [Same (locked)](https://leetcode.com/problems/palindrome-permutation/description/)
#
# check if it can be a palindrome
# if length is pairs, count chars and check if all are pairs or can be devided by 2
# if length is odd, count chars and check if all are pairs except one

def palindrome_permutation(str)
  return false if str.length < 2

  str.gsub!(' ', '') # remove spaces
  char_list = str.chars.tally
  odd_chars = char_list.values.filter(&:odd?)

  if str.length.even?
    return false if odd_chars.any?
  else
    return false if odd_chars.length != 1
  end

  true
end

### Tests

p palindrome_permutation('tact coa') == true
p palindrome_permutation('tac coa') == false
p palindrome_permutation('ta cta') == true
p palindrome_permutation('txa coa') == false
p palindrome_permutation('c') == false
p palindrome_permutation('aaaabbbb') == true
p palindrome_permutation('tactcoapapa') == true
