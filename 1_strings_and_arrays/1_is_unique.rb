# 1.1. *Is Unique*: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

def is_unique?(string)
  iterated = {}

  string.each_char do |char|
    return false if iterated[char]

    iterated[char] = 1
  end

  true
end

p is_unique?('aaaa') == false
p is_unique?('abcd') == true
p is_unique?('abdsa') == false
