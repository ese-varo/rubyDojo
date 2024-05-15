# pairs of socks
def sort_merchant(n, ar)
  return if n < 1 || (ar.length > 100 || ar.empty?)

  colors = {}
  ar.each do |sock|
    colors[sock] ||= []
    colors[sock] << sock
  end
  colors.values.reduce(0) { |pairs, color| pairs + color.length / 2 }
end

p sort_merchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
p sort_merchant(7,[1, 1, 1, 1, 3, 3, 3, 3, 4, 3, 4, 5, 6, 6, 6, 6, 6, 8])

