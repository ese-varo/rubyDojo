def decrypt(text, rounds)
  char_array = text.split("")
    .map do |c|
      t = c
      rounds.times do
        break unless t.match?(/[a-zA-Z]/)
        if "aA".include?(t) #t == 'a'
          t = 'z' if t == 'a'
          t = 'Z' if t == 'A'
        else
          t = (t.ord - 1).chr
        end
      end
      t
    end
    char_array.join
end

=begin
ordinal numbers for chars
a => 97
z => 122

Calculate previous alphabet char
if char ord value is equal to 97 convert it to 122 (z char)
=end
