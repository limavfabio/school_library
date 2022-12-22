require_relative './nameable/nameable_decorator'
require_relative 'rental_class'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', rentals = [], parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
    @name = name
    @age = age
    @rentals = rentals
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def add_rental(book, date)
    Rental.new(self, book, date)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
end
