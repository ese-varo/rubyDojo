input = gets.chomp

def even_odd_chars(input)
  return unless input.size > 1

  even_string = ''
  odd_string = ''
  input.chars.each_with_index do |elem, idx|
    idx.even? ? even_string += elem : odd_string += elem
  end
  puts "#{even_string} #{odd_string}"
end

even_odd_chars(input)
