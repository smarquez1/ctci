# 2. *Check Permutation*:
# Given two strings, write a method to decide if one is a permutation of the other.
# A permutation is a rearrangement of letters.
# [Same](https://leetcode.com/problems/valid-anagram/)
# [Harder](https://leetcode.com/problems/permutation-in-string/)

# for this solution, we count the characters of each string and compare them
def check_permutation(str1, str2)
  n = str1.length

  return false if n != str2.length

  char_count = {}

  for i in 0..n do
    c = str1[i]
    char_count[c] ? char_count[c] += 1 : char_count[c] = 1
  end

  for i in 0..n do
    c = str2[i]
    return false unless char_count[c]

    char_count[c] -= 1
  end

  true
end

puts check_permutation("abc", "cba") == true
puts check_permutation("abcdefg", "dfebgac") == true

def check_permutation_array(str1, str2)
  return false if str1.length != str2.length

  chars = Array.new 128, 0 # assumption: ASCII

  for i in 0...str1.length
    chars[str1[i].ord] += 1
  end

  for i in 0...str1.length
    chars[str1[i].ord] -= 1
    return false if chars[str1[2].ord] < 0
  end

  true
end

puts check_permutation_array("abc", "cba") == true
puts check_permutation_array("abcdefg", "dfebgac") == true


# we can sort both strings and compare them. This is suboptimal but easier to read
def check_permutation_sorting(str1, str2)
  n = str1.length

  return false if n != str2.length

  str1.chars.sort == str2.chars.sort
end
