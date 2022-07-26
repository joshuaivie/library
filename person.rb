class Person
  attr_reader :id, :rentals, :age, :name

  def initialize(age, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @rentals = []
  end
  
  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
    rental.person = self
  end 
end
