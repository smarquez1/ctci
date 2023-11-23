# 9. *String Rotation*;
# Assume you have a method `isSubstring` which checks if one word is a substring of another.
# Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring
# [e.g., "waterbottle" is a rotation of 'erbottlewat")

def substring?(s1, s2)
  n = s1.size

  return false if n != s2.size

  rotated = s1.chars

  (n - 1).times do
    rotated = rotate(rotated, n - 1)
    return true if rotated == s2.chars
  end

  false
end

def rotate(chars, n)
  x = chars.delete_at(n)
  chars.unshift x
end

# TESTS
puts substring?('waterbottle', 'rbottlewat') == false
puts substring?('waterbottle', 'erbottlewat') == true
puts substring?('waterbottle', 'tlewaterbot') == true
puts substring?('waterbottle', 'tlewaterbot') == true
puts substring?('waterbottle', 'aterbottlew') == true
puts substring?('waterbottle', 'ewaterbottl') == true
