class Bird
  def tweet(bird_type)
    bird_type.tweet
  end
end

class Duck < Bird
  def tweet
    puts "Quack quack"
  end
end

class Owl < Bird
  def tweet
    puts "Hoot"
  end
end

generic_bird = Bird.new
generic_bird.tweet(Duck.new)
generic_bird.tweet(Owl.new)
