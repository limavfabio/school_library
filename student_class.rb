# frozen_string_literal: true

require_relative 'person_class'

# Student Class
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom = 'Unknown', name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
