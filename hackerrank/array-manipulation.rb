def array_manipulation(n, queries)
  result = Array.new(n) { 0 }
  queries.each do |query|
    a = query[0] - 1
    b = query[1] - 1
    k = query[2]
    (a..b).each { |i| result[i] += k if k }
    # ((query[0] - 1)..(query[1] - 1)).each { |i| result[i] += query[2] unless query[2].nil? }
  end
  result.max
  result
end

p array_manipulation(10, [[5, 3], [1, 2, 100], [2, 5, 100], [3, 4, 100]])
p array_manipulation(10, [[1, 5, 3], [4, 8, 7], [6, 9, 1]])
