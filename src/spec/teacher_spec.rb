require 'rspec'
require_relative '../teacher_class'

describe Teacher do
  let(:teacher) { Teacher.new(264, 'Jane', 35, true, 'Math') }

  context '#initialize' do
    it 'sets the id, name, and age inherited from Person' do
      expect(teacher.id).to eq(264)
      expect(teacher.name).to eq('Jane')
      expect(teacher.age).to eq(35)
    end

    it 'sets the specialization' do
      expect(teacher.specialization).to eq('Math')
    end
  end

  context '#can_use_services?' do
    it 'returns true' do
      expect(teacher.can_use_services?).to eq(true)
    end
  end
end
