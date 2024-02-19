# 1. 5.
# *One Away*:
# There are three types of edits that can be performed on strings:
# insert a character, remove a character, or replace a character.
#
# Given two strings, write a function to check if they are one edit (or zero edits) away.
# [Same(premium)](https://leetcode.com/problems/one-edit-distance/)
# [Harder](https://leetcode.com/problems/edit-distance/description/)

# Book solution
def one_edit_away?(first, second)
  if first.length == second.length
    return one_edit_replace?(first, second)
  elsif first.length + 1 == second.length
    return one_edit_insert?(first, second)
  elsif first.length - 1 == second.length
    return one_edit_insert?(second, first)
  end

  false
end

def one_edit_replace?(first, second)
  diff = 0

  for i in 0..first.length do
    return false if diff > 1

    diff += 1 if first[i] != second[i]
  end

  true
end

def one_edit_insert?(first, second)
  i = 0
  j = 0

  while j < second.length && i < first.length
    if first[i] != second[j]
      return false if i != j

      j += 1
    else
      i += 1
      j += 1
    end
  end

  true
end

puts one_edit_away?('cat', 'cat') == true # 0 edits away
puts one_edit_away?('cat', 'car') == true # count each char, only 1 differs
puts one_edit_away?('cat', 'ca') == true # count each char, only 1 differs
puts one_edit_away?('cat', 'cara') == false # count each char, 2 differ
puts one_edit_away?('cat', 'cata') == true # count each char, only 1 differs
puts one_edit_away?('cat', 'caras') == false # two chars are different
puts one_edit_away?('cat', 'c') == false # two chars are different
puts one_edit_away?('cat', 'cxx') == false # twoc hars are different
puts "-------------"

# less code, but harder to reason
def one_edit_away?(first, second)
  return false if (first.length - second.length).abs > 1

  s1 = first.length < second.length ? first : second
  s2 = first.length < second.length ? second : first

  i = 0
  j = 0
  diff = false

  while i < s1.length && j < s2.length
    if s1[i] != s2[j]
      return false if diff

      diff = true
      i += 1 if s1.length == s2.length
    else
      i += 1
    end

    j += 1
  end

  true
end

####

def one_edit_away?(l, s)
  ls, ss = l.size, s.size

  return true if l == s
  return false if (ls-ss).abs > 1 || l == s

  for i in 0...[ls, ss].min do
    if (l[i] != s[i])
      # replace, insert, delete
      return l[i+1] == s[i+1] || l[i] == s[i+1] || l[i+1] == s[i]
    end
  end

  true
end

puts one_edit_away?('cat', 'cat') == true # 0 edits away
puts one_edit_away?('cat', 'car') == true # count each char, only 1 differs
puts one_edit_away?('cat', 'ca') == true # count each char, only 1 differs
puts one_edit_away?('cat', 'cara') == false # count each char, 2 differ
puts one_edit_away?('cat', 'cata') == true # count each char, only 1 differs
puts one_edit_away?('cat', 'caras') == false # two chars are different
puts one_edit_away?('cat', 'c') == false # two chars are different
puts one_edit_away?('cat', 'cxx') == false # two chars are different
