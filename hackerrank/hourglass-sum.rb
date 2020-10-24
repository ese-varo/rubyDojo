def hourglass_sum(arr)
  sum_arr = []
  (arr.length - 2).times do |i|
    (arr.length - 2).times do |j|
      sum = arr[i][j] + arr[i][j + 1] + arr[i][j + 2] + arr[i + 1][j + 1]
      sum += arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2]
      sum_arr << sum
    end
  end
  sum_arr.max
end

hourglasses = [
  [-9, -9, -9, 1, 1, 1],
  [ 0, -9,  0, 4, 3, 2],
  [-9, -9, -9, 1, 2, 3],
  [ 0,  0,  8, 6, 6, 0],
  [ 0,  0,  0,-2, 0, 0],
  [ 0,  0,  1, 2, 4, 0]
]

# puts hourglasses
# p hourglasses
p hourglass_sum(hourglasses)
