require 'json'

class ManagePersistance
  def book_to_json(book)
    # serialize to json
    {
      title: book.title,
      author: book.author
    }
  end

  def write_to_file(books)
    # write to file
    serialized_books = books.map { |book| book_to_json(book) }
    File.write('./DB/books.json', JSON.pretty_generate(serialized_books))
  end

  def read_from_file(json)
    # read from file
    deserialized_books = JSON.parse(File.read(json))
    deserialized_books.map { |book| json_to_book(book) }
  end

  def json_to_book(json)
    # deserialize from json
    Book.new(json['title'], json['author'])
  end
end
