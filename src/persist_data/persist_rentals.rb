require 'json'

module PersistRentals
  SOURCE = './DB/rentals.json'.freeze

  def self.read_from_file
    deserialized_rentals = JSON.parse(File.read(SOURCE))
    deserialized_rentals.map { |rental| json_to_rentals(rental) }
  end

  def self.json_to_rentals(json)
    ManageRentals.new.create_rental(@books_list, @people_list, @rentals_list)

  end

  def self.write_to_file(rentals)
    serialized_rentals = rentals.map { |rental| rental_to_json(rental) }
    File.write(SOURCE, JSON.pretty_generate(serialized_rentals))
  end

  def self.rental_to_json(rental)
    {
      date: rental.date,
      person: rental.person.name,
      book: rental.book.title,
      author: rental.book.author
    }
  end
end
