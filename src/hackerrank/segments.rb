def segment(x, arr)
  return if x > arr.length

  subarrays = []
  minima = []
  i = 0
  j = x - 1

  # generate subarrays
  while j < arr.length do
    subarrays << arr.slice(i..j)
    i += 1
    j += 1
  end

  # get minimum from each subarray
  subarrays.each do |sub|
    minima << sub.min
  end

  # get maximum from these minima array
  minima.max
end

puts segment(1, [1, 2, 3, 1, 2])
p segment(2, [1, 1, 1])
p segment(3, [2, 5, 4, 6, 8])

# p [1, 3, 4, 1, 5].min
# p [1, 3, 4, 1, 5].max

