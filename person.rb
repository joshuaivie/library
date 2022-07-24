require 'uuid'

class Person
  attr_reader :id
  attr_accessor :age, :name

  ID = UUID.new

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = ID.generate
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
