require 'rspec'
require_relative '../book_class'

describe Book do
  let(:book) { Book.new('War and Peace', 'Leo Tolstoy') }

  context '#initialize' do
    it 'sets the title and author' do
      expect(book.title).to eq('War and Peace')
      expect(book.author).to eq('Leo Tolstoy')
    end
  end
end
