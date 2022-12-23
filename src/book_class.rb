require_relative 'rental_class'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author, rentals = [])
    @title = title
    @author = author
    @rentals = rentals
  end

  def add_rental(person, date)
    Rental.new(person, self, date)
  end
end
