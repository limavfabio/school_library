require './src/person_class'
require './src/student_class'
require './src/teacher_class'
require './src/classroom_class'
require './src/book_class'
require './src/nameable/capitalize_decorator'
require './src/nameable/trimmer_decorator'

class App
  $people_list = []
  $books_list = []
  $rentals_list = []

  def list_all_books
    puts 'List all books'
    $books_list.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_all_people
    puts 'List all people'
    $people_list.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    sub_option = gets.chomp.to_i
    case sub_option
    when 1
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp
      print 'Has parent permission? [Y/N]'
      permission = gets.chomp
      permission = permission.downcase == 'y'
      student = Student.new(age, name, nil, permission)
      $people_list << student
      puts 'Person created successfully'
    when 2
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp
      print 'Specialization: '
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      $people_list << teacher
      puts 'Person created successfully'
    else
      puts 'Invalid option'
      create_person
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    $books_list << book
    puts 'Book created successfully'
  end

  def create_rental
    puts 'Choose a book from the following list by number'
    $books_list.each_with_index do |book, index|
      puts "#{index + 1}) Title: #{book.title}, Author: #{book.author}"
    end
    print 'Book number: '
    book_number = gets.chomp.to_i - 1
    puts 'Choose a person from the following list by number'
    $people_list.each_with_index do |person, index|
      puts "#{index + 1}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    print 'Person number: '
    person_number = gets.chomp.to_i - 1
    print 'Date: '
    date = gets.chomp
    book = $books_list.at(book_number)
    person = $people_list.at(person_number)
    book.add_rental(person, date)
    rental = Rental.new(person, book, date)
    $rentals_list << rental
    puts 'Rental created successfully'
  end

  def list_rentals_for_person_id
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    $rentals_list.each do |rental|
      if rental.person.id == id
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}, Person: #{rental.person.name}"
      end
    end
  end
end
