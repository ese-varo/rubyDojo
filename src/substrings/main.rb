=begin
Implement a method #substrings that takes a word as the first argument and
then an array of valid substrings (your dictionary) as the second argument. It
should return a hash listing each substring (case insensitive) that was found in
the original string and how many times it was found
=end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
text = "Howdy partner, sit down! How's it going?"

def substrings(string, valid_substrings)
  result = Hash.new(0)
  string.split(" ").each do |word|
    valid_substrings.each do |substring|
      result[substring.downcase] += 1 if word.downcase.include?(substring.downcase)
    end
  end
  result
end

puts substrings(text, dictionary)
