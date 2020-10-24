class Person
  attr_reader :age
  def initialize(initial_age)
    @age = validate_age(initial_age)
  end

  def validate_age(initial_age)
    if initial_age < 0
      puts 'Age is not valid, setting age to 0.'
      0
    end
    initial_age
  end

  def am_i_old
    if age < 13
      puts 'You are young.'
    elsif age < 18
      puts 'You are a teenager.'
    else
      puts 'You are old.'
    end
  end

  def year_passes
    self.age += 1
  end

  private

    attr_writer :age
end

person = Person.new(10)
person.year_passes
puts person.age
# person.age = 1
# puts person.age

