class Rental
  attr_accessor :date, :book

  def initialize(date, book)
    @date = date
    book.add_rental(self)
  end
end
