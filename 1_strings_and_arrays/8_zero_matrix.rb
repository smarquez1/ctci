# 8. *Zero Matrix*:
# Write an algorithm such that if an element in an MxN matrix is 0,
# its entire row and column are set to 0.

def zero_matrix(matrix)
  n = matrix.first.size

  matrix.each_with_index do |row, i|
    row.each do |cell|
      if cell.zero?
        matrix[i] = Array.new(n, 0)
        break;
      end
    end
  end

  matrix
end

# TESTS
param = [[1, 0], [0, 1]]
expected = [[0, 0], [0, 0]]

puts  zero_matrix(param).join(",")
puts expected.join(",")
puts zero_matrix(param) == expected

param = [[1, 0, 1], [0, 1, 1], [0, 1, 1], [1, 1, 1]]
expected = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [1, 1, 1]]

puts  zero_matrix(param).join(",")
puts expected.join(",")
puts zero_matrix(param) == expected
