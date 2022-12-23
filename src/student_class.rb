require_relative 'person_class'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, classroom, parent_permission)
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
    classroom&.add_student(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
