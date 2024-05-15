def encrypt(text, rounds)
  char_array = text.split("")
    .map do |c|
      t = c
      rounds.times do
        break unless t.match?(/[a-zA-Z]/)
        t = t.next.ord.chr
      end
      t
    end
    char_array.join
end
