require 'json'

class ManagePersistance
  def write_to_file(books)
    # write to file
    File.write('./DB/books.json', JSON.generate(books))
  end

  def read_from_file(file)
    # read from file
    JSON.parse(File.read(file))
  end
end
