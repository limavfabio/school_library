require 'rspec'
require_relative '../rental_class'

describe Rental do
  let(:rental) { Rental.new('Jhon', 'The little prince', '01/03/2021') }

  context '#initialize' do
    it 'sets the person, book and date of Rental' do
      expect(rental.person).to eq('Jhon')
      expect(rental.book).to eq('The little prince')
      expect(rental.date).to eq('01/03/2021')
    end
  end
end
