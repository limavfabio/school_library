# main path
require_relative 'app'

$app = App.new

def run
  puts "Wellcome to School Library cli! \n
      \n
      \n
      Please choose an option by entering a number: \n
      1 - List all books \n
      2 - List all people \n
      3 - Create a person \n
      4 - Create a book \n
      5 - Create a rental \n
      6 - List all rentals for a given person id \n
      7 - Exit \n"

  option = gets.chomp.to_i
  case option
  when 1
    $app.list_all_books
  when 2
    $app.list_all_people
  when 3
    $app.create_person
  when 4
    $app.create_book
  when 5
    $app.create_rental
  when 6
    $app.list_rentals_for_person_id
  when 7
    puts 'Thank you for using this app!'
    return
  else
    puts 'Invalid option'
  end

  print 'Press Enter to continue'
  gets.chomp
  run
end

run
