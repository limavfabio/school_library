require './src/person_class'
require './src/student_class'
require './src/teacher_class'
require './src/classroom_class'
require './src/book_class'
require './src/nameable/capitalize_decorator'
require './src/nameable/trimmer_decorator'
require './src/manage_rentals'
require './src/persist_data/persist_books'
require './src/persist_data/persist_people'
require './src/persist_data/persist_rentals'


class App
  def initialize
    @people_list = []
    @books_list = PersistBooks.read_from_file || []
    @rentals_list = []
  end

  def list_all_books
    puts 'List all books'
    @books_list.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def list_all_people
    puts 'List all people'
    @people_list.each do |person|
      puts "[#{person.class}] ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
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
      parent_permission = gets.chomp.downcase == 'y'
      id = Random.rand(1..1000)
      student = Student.new(id, name, age, parent_permission, nil)
      @people_list << student
      puts 'Person created successfully'
    when 2
      print 'Age: '
      age = gets.chomp.to_i
      print 'Name: '
      name = gets.chomp
      print 'Specialization: '
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      @people_list << teacher
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
    @books_list << book
    puts 'Book created successfully'
  end

  def create_rental
    ManageRentals.new.create_rental(@books_list, @people_list, @rentals_list)
  end

  def list_rentals_for_person_id
    print 'ID of person: '
    id = gets.chomp.to_i
    puts 'Rentals:'
    @rentals_list.each do |rental|
      if rental.person.id == id
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}, Person: #{rental.person.name}"
      end
    end
  end

  def save_data
    PersistPeople.write_to_file(@people_list)
    PersistBooks.write_to_file(@books_list)
  end
end
