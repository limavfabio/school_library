require_relative 'person_class'

class Student < Person
  attr_reader :classroom

  def initialize(id, name, age, parent_permission, classroom = "Unknown")
    super(id, name, age)
    @classroom = classroom
    @parent_permission = parent_permission
    classroom&.add_student(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
