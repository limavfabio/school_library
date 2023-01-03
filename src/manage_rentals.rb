# manage rentals
class ManageRentals
  def create_rental(books, people, rentals)
    puts 'Choose a book from the following list by number'
    books.each_with_index do |book, index|
      puts "#{index + 1}) Title: #{book.title}, Author: #{book.author}"
    end
    print 'Book number: '
    book_number = gets.chomp.to_i - 1
    puts 'Choose a person from the following list by number'
    people.each_with_index do |person, index|
      puts "#{index + 1}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    print 'Person number: '
    person_number = gets.chomp.to_i - 1
    print 'Date: '
    date = gets.chomp
    book = books.at(book_number)
    person = people.at(person_number)
    book.add_rental(person, date)
    rental = Rental.new(person, book, date)
    rentals << rental
    puts 'Rental created successfully'
  end
end
