require 'json'

module PersistPeople
  SOURCE = './DB/people.json'.freeze

  def self.read_from_file
    return [] unless File.exist?(SOURCE)

    deserialized_people = JSON.parse(File.read(SOURCE))
    deserialized_people.map { |person| json_to_people(person) }
  end

  def self.json_to_people(json)
    if json['class'] == 'Student'
      Student.new(json['id'], json['name'], json['age'], true)
    else
      Teacher.new(json['id'], json['name'], json['age'], true, 'Math')
    end
  end

  def self.write_to_file(people)
    serialized_people = people.map { |person| person_to_json(person) }
    File.write(SOURCE, JSON.pretty_generate(serialized_people))
  end

  def self.person_to_json(person)
    {
      class: person.class,
      id: person.id,
      name: person.name,
      age: person.age
    }
  end
end
