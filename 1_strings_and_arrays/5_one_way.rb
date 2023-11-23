# 1. 5.
# *One Away*:
# There are three types of edits that can be performed on strings:
# insert a character, remove a character, or replace a character.
#
# Given two strings, write a function to check if they are one edit (or zero edits) away.


def one_way(a, b)
  return true if a == b
  return false if (a.length - b.length).abs > 1 

  # Are there more than 1 different chars?
  a.each_char.with_index.count { |char, i| char != b[i] } < 2
end



# Tests
puts one_way("cat", "cat") == true # 0 edits away
puts one_way("cat", "car") == true # count each char, only 1 differs
puts one_way("cat", "ca") == true # count each char, only 1 differs
puts one_way("cat", "cara") == true # count each char, only 1 differs
puts one_way("cat", "cata") == true # count each char, only 1 differs
puts one_way("cat", "caras") == false # two chars are different
puts one_way("cat", "c") == false  # two chars are different
puts one_way("cat", "cxx") == false # twoc hars are different
