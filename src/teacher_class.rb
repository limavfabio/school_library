require_relative 'person_class'

class Teacher < Person
  attr_reader :specialization

  def initialize(id, name, age, parent_permission, specialization )
    @specialization = specialization
    super(id, name, age)
  end

  def can_use_services?
    true
  end
end
