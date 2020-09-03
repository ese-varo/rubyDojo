def mask_article(text, words)
  words.uniq.each do |word|
    text = text.gsub(word, strike(word)) if text.include?(word)
  end
  text
end

def strike(word)
  "<strike>#{word}</strike>"
  # '<strike>' + word + '</strike>'
end

arr = %w[hola casa comida]
phrase = 'hola ahorita estoy en mi casa haciendo la comida'

puts mask_article(phrase, arr)

