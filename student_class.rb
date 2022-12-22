require_relative 'person_class'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', classroom = 'Unknown', parent_permission: true)
    super(age, name)
    @classroom = classroom
    classroom.add_student(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
