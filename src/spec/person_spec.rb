require 'rspec'
require_relative '../person_class'
require_relative '../rental_class'

describe Person do
  let(:person) { Person.new(142, 'John', 15, parent_permission: true) }

  context '#initialize' do
    it 'sets the id, name, and age of Person' do
      expect(person.id).to eq(142)
      expect(person.name).to eq('John')
      expect(person.age).to eq(15)
      expect(person.instance_variable_get(:@parent_permission)).to be_truthy
    end
  end

  context 'Test Person methods' do
    it '#can_use_services' do
      expect(person.can_use_services?).to be_truthy
    end

    it '#add_rental' do
      expect(person.add_rental('book', 'date')).to be_an_instance_of(Rental)
    end
  end
end
