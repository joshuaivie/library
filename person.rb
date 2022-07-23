class Person
  attr_reader :id
  attr_accessor :age, :name

  @@person_count = 0

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = @@person_count
    @name = name
    @age = age
    @parent_permission = parent_permission
    @@person_count += 1
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private

  def is_of_age?
    @age >= 18
  end
end
