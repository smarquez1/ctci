# 2. *Check Permutation*:
# Given two strings, write a method to decide if one is a permutation of the other.
# A permutation is a rearrangement of letters.
# [LeetCode](https://leetcode.com/problems/permutation-in-string/)

def check_permutation(str1, str2)
  return false if str1.length != str2.length

  char_count = {}

  str1.each_char do |c|
    char_count[c] ? char_count[c] += 1 : char_count[c] = 1
  end

  str2.each_char do |c|
    return false unless char_count[c]

    char_count[c] -= 1
  end

  true
end
