require_relative 'person_class'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'Unknown',id, parent_permission: true )
    @specialization = specialization
    super(age, name, id)
  end

  def can_use_services?
    true
  end
end
