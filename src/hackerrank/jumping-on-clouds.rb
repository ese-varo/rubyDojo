def jumping_on_clouds(c)
  required_jumps = 0
  pos = 0
  p c
  puts pos
  while pos < c.length - 1
    (pos + 2 < c.length) && c[pos + 2].zero? ? pos += 2 : pos += 1
    required_jumps += 1
    puts pos
  end
  required_jumps
end

puts jumping_on_clouds([0, 0, 0, 1, 0, 0])

