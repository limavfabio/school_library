require_relative 'person_class'
require_relative 'student_class'
require_relative 'teacher_class'

# Create a new Person and see if they can use services
franz = Person.new(20, 'Franz')
puts franz.name
puts franz.age
puts franz.can_use_services?
puts

julian_student = Student.new(15, 'Julian', 'Math')
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
