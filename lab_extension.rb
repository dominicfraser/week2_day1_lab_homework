class Library

  attr_accessor :books_array

  def initialize(books_array)
    @books_array = books_array
  end

  def book_info(title)
    for book in @books_array
      if book[:title] == title
      return book
      end
    end 
  end

def rental_info(title)
  @books_array.each do |book| 
    if book[:title] == title
      return book[:rental_details]
    end
  end
end




end

# Create a method that takes in a book title and returns only the rental details for that book.

# [{title: "book1", rental_details: {student_name: "Jake", date: "01/01/2010"}}, {
#       title: "book2",
#       rental_details: {
#         student_name: "Sam",
#         date: "01/02/2010"
#       }
#     },
#     {
#       title: "book3",
#       rental_details: {
#         student_name: "Rob",
#         date: "01/03/2010"
#       }
#     }
#   ]