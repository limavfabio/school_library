require 'rspec'
require_relative '../solver_class'

describe Student do
  let(:solver) { Solver.new }

  context '#factorial' do
    it 'returns 720 for input 6' do
      expect(@solver.factorial(6)).to eq 720
    end
  end

  context '#reverse' do
    it 'returns "olleh" for input "hello"' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end
  end

  context '#fizzbuzz' do
    it 'returns "1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz" for the first 15 numbers' do
      expect(@solver.fizzbuzz(15)).to eq '1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz'
    end
  end
end
