# 1.1. *Is Unique*:
# Implement an algorithm to determine if a string has all unique characters.
# [Similar](https://leetcode.com/problems/contains-duplicate)

def is_unique?(string)
  iterated = {}

  string.each_char do |char|
    return false if iterated[char]

    iterated[char] = 1
  end

  true
end

# What if you cannot use additional data structures?
def is_unique_2?(string)
  n = string.length

  for i in 0..n do
    for j in (i + 1)..n do
      return false if string[i] == string[j]
    end
  end

  true
end

inputs = {
  'aaaa' => false,
  'abcd' => true,
  'abdsa' => false
}

inputs.each do |k, v|
  p is_unique?(k) == v
end

inputs.each do |k, v|
  p is_unique_2?(k) == v
end
