# 8. *Zero Matrix*:
# Write an algorithm such that if an element in an MxN matrix is 0,
# its entire row and column are set to 0.

def zero_matrix(matrix)
  n = matrix.size

  matrix.each_with_index do |row, i|
    row.each do |cell|
       matrix[i] = Array.new(n, 0) if cell.zero?
    end
  end

  matrix
end

# TESTS
param = [[1, 0], [0, 1]]
expected = [[0, 0], [0, 0]]

puts zero_matrix(param) == expected
