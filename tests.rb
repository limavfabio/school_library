require_relative 'person_class'
require_relative 'student_class'
require_relative 'teacher_class'
require_relative './nameable/capitalize_decorator'
require_relative './nameable/trimmer_decorator'

# Create a new Person and see if they can use services
franz = Person.new(20, 'Franz', parent_permission: false)
puts franz.name
puts franz.age
puts franz.can_use_services?
puts

julian_student = Student.new(15, 'Julian', 'Math', parent_permission: false)
puts julian_student.name
puts julian_student.age
puts julian_student.classroom
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
