# 6. *String Compression*:
# Implement a method to perform basic string compression using the counts of repeated characters.
# For example, the string aabcccccaaa would become a2blc5a3,
# If the "compressed" string would not become smaller than the original string, your method should return the original string.
# You can assume the string has only uppercase and lowercase letters (a - z).

def string_compressor(str)
  compressed = compress_string(str)

  return str if compressed.length >= str.length

  compressed
end

def compress_string(str)
  chars = []
  count = 0

  str.each_char.with_index do |c, i|
    prev_char = str[i - 1]
    next_char = str[i + 1]

    chars.push(c) if i.zero? || prev_char != c
    count += 1

    if next_char != c
      chars.push(count)
      count = 0
    end
  end

  chars.join
end

puts string_compressor('abc').eql? 'abc'
puts string_compressor('aabc').eql? 'aabc'
puts string_compressor('aaaaaabc').eql? 'a6b1c1'
puts string_compressor('aabcccccaaa').eql? 'a2b1c5a3'
