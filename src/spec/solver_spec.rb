require 'rspec'
require_relative '../solver_class'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'returns 720 for input 6' do
      expect(@solver.factorial(6)).to eq 720
    end

    it 'returns 1 for input 0' do
      expect(@solver.factorial(0)).to eq 1
    end

    it 'returns and exception for input -1' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'returns "olleh" for input "hello"' do
      expect(@solver.reverse('hello')).to eq 'olleh'
    end
  end

  context '#fizzbuzz' do
    it 'returns "fizz" for input 3' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
    end

    it 'returns "buzz" for input 5' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
    end

    it 'returns "fizzbuzz" for input 15' do
      expect(@solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'returns "7" for input 7' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
