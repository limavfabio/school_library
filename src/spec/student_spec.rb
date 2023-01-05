require 'rspec'
require_relative '../student_class'

describe Student do
  let(:student) { Student.new(135, 'John', 15, true, '10A') }

  context '#initialize' do
    it 'sets the id, name, and age inherited from Person' do
      expect(student.id).to eq(135)
      expect(student.name).to eq('John')
      expect(student.age).to eq(15)
    end

    it 'sets the classroom' do
      expect(student.classroom).to eq('10A')
    end

    it 'sets the parent permission flag' do
      expect(student.instance_variable_get(:@parent_permission)).to eq(true)
    end
  end

  context '#play_hooky' do
    it 'returns a string' do
      expect(student.play_hooky).to be_a(String)
    end
  end
end
