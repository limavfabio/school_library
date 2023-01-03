require 'json'
require './src/persist_books'

class ManagePersistance
  def write_data(books)
    # write to file
    PersistBooks.new.write_to_file(books)
    # PersistPeople.new.write_to_file...
    # PersistRentals.new.write_to_file...
  end

  def read_data
    # read from file
    PersistBooks.new.read_from_file('./DB/books.json')
    # PersistPeople.new.read_from_file...
    # PersistRentals.new.read_from_file...
  end
end
