require_relative 'person_class'
require_relative 'student_class'
require_relative 'teacher_class'
require_relative './nameable/capitalize_decorator'
require_relative './nameable/trimmer_decorator'
require_relative 'classroom_class'
require_relative 'book_class'


# Create a new Person and see if they can use services
franz = Person.new(20, 'Franz', parent_permission: false)
puts franz.name
puts franz.age
puts franz.can_use_services?
puts

math_classroom = Classroom.new('Math')
julian_student = Student.new(15, 'Julian', math_classroom)
puts julian_student.name
puts julian_student.age
puts julian_student.classroom.label
puts julian_student.can_use_services?
puts julian_student.play_hooky
puts

alex_teacher = Teacher.new(47, 'Alex', 'Science')

puts alex_teacher.name
puts alex_teacher.age
puts alex_teacher.can_use_services?
puts alex_teacher.specialization
puts

person = Person.new(22, 'maximilianus')
puts person.correct_name
puts capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
puts capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
puts

geography_classroom = Classroom.new('Geography')
sam_student = Student.new(14, 'Sam', geography_classroom)
black_house_book = Book.new("Black House", "Stephen King")
black_house_book.add_rental(sam_student, '2022-10-10')
puts sam_student.name
puts sam_student.classroom.label
puts sam_student.rentals.inspect
