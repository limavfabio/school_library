require 'json'

module PersistBooks
  SOURCE = './DB/books.json'.freeze

  def self.read_from_file
    return [] unless File.exist?(SOURCE)

    deserialized_books = JSON.parse(File.read(SOURCE))
    deserialized_books.map { |book| json_to_book(book) }
  end

  def self.json_to_book(json)
    Book.new(json['title'], json['author'])
  end

  def self.write_to_file(books)
    serialized_books = books.map { |book| book_to_json(book) }
    File.write(SOURCE, JSON.pretty_generate(serialized_books))
  end

  def self.book_to_json(book)
    {
      title: book.title,
      author: book.author
    }
  end
end
