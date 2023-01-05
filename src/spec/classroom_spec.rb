require 'rspec'
require_relative '../classroom_class'

describe Classroom do
  let(:classroom) { Classroom.new('Math') }

  context '#initialize' do
    it 'sets the label of Classroom' do
      expect(classroom.label).to eq('Math')
    end
  end

  context 'Test Classroom methods' do
    it '#add_students' do
      classroom.add_student('John')
      expect(classroom.students).to include('John').at_most(1).times
    end
  end
end
