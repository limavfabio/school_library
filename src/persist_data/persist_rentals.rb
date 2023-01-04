require 'json'
require './src/persist_data/persist_people'
require './src/persist_data/persist_books'

module PersistRentals
  SOURCE = './DB/rentals.json'.freeze

  def self.read_from_file
    deserialized_rentals = JSON.parse(File.read(SOURCE))
    deserialized_rentals.map { |rental| json_to_rentals(rental) }
  end

  def self.json_to_rentals(json)
    person = PersistPeople.json_to_people(json['person'])
    book = PersistBooks.json_to_book(json['book'])
    Rental.new(person, book, json['date'])
  end

  def self.write_to_file(rentals)
    serialized_rentals = rentals.map { |rental| rental_to_json(rental) }
    File.write(SOURCE, JSON.pretty_generate(serialized_rentals))
  end

  def self.rental_to_json(rental)
    {
      person: PersistPeople.person_to_json(rental.person),
      book: PersistBooks.book_to_json(rental.book),
      date: rental.date
    }
  end
end
