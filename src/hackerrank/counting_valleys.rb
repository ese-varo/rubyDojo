def counting_valleys(steps, path)
  valleys = 0
  counter = { current: 0, previous: 0 }
  path.each do |step|
    counter[:previous] = counter[:current]
    step == 'U' ? counter[:current] += 1 : counter[:current] -= 1
    valleys += 1 if counter[:current].zero? && counter[:previous].negative?
  end
  valleys
end

puts counting_valleys(8, %w[U D D D U D U U])

