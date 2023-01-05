require 'rspec'
require_relative '../nameable/base_decorator'
require_relative '../nameable/capitalize_decorator'
require_relative '../nameable/trimmer_decorator'
require_relative '../nameable/nameable_decorator'

describe 'Decorators' do
  # let(:rental) { Rental.new('Jhon', 'The little prince', '01/03/2021') }

  context 'Test Nameable decorator' do
    it '#correct_name raises an NotImplementedError' do
      expect { Nameable.new.correct_name }.to raise_error(NotImplementedError)
    end
  end

  context 'Test BaseDecorator' do
    it 'initialize with a nameable' do
      nameable = NameableDecorator.new('maximiliano')
      expect(nameable.nameable).to eq('maximiliano')
    end
  end

  # Issues comes from here

  context 'Test CapitalizeDecorator' do
    it 'capitalize the name' do
      nameable = CapitalizeDecorator.new('maximiliano')
      expect(nameable.nameable.capitalize).to eq('Maximiliano')
    end
  end
end
