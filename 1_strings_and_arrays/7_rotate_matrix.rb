# 7. *Rotate Matrix*:
# Given an image represented by an NxN matrix,
# where each pixel in the image is 4 bytes,
# write a method to rotate the image by 90 degrees. Can you do this in place?

def rotate_matrix(image)
  size = image.size
  rotated = Array.new(size) { Array.new(size) }

  image.each_with_index do |row, x|
    row.each_with_index do |cell, y|
      rotated[y][size - 1 - x] = cell # row becomes column but column becomes size - row 
    end
  end

  rotated
end

# TESTS
a = [[1, 2], [3, 4]]
b = [[3, 1], [4, 2]]
puts rotate_matrix(a) == b

a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
b = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
puts rotate_matrix(a) == b
