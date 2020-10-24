def repeated_string(s, n)
  a_in_chunk = s.count('a')
  a_in_chunk * (n / s.length) + s.slice(0, (n % s.length)).count('a')
end

puts repeated_string('abcac', 30)


