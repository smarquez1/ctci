# 1. 3.
# URLify:
# Write a method to replace all spaces in a string with '%20'.
# You may assume that the string has sufficient space at the end to hold the additional characters,
# and that you are given the "true" length of terhe string.
#
# ```
# EXAMPLE
# Input: "Mr 3ohn Smith "
# Output: "Mr%203ohn%20Smith"
# ```


def urlify(str, length)
  url = ''
  chars = str.chars

  length.times do |i|
    url += chars[i] == ' ' ? '%20' : chars[i]
  end
  url
end

def urlify_2(str, length)
  str[0...length].gsub(" ", "%20")
end

p urlify('Mr 3ohn Smith ', 13) == 'Mr%203ohn%20Smith'
p urlify_2('Mr 3ohn Smith ', 13) == 'Mr%203ohn%20Smith'

require 'benchmark'

puts(Benchmark.measure do
  50_000.times do
    urlify('Mr 3ohn Smith ', 13) == 'Mr%203ohn%20Smith'
  end
end)

puts(Benchmark.measure do
  50_000.times do
    urlify_2('Mr 3ohn Smith ', 13) == 'Mr%203ohn%20Smith'
  end
end)
