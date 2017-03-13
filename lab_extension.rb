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


def add_book(title)
  @books_array << { title: "#{title}",     rental_details: {
        student_name: "",
        date: ""
        }
      }
end

def new_rental(title, student_name, due_date)

  @books_array.each do |book|
    if book[:title] == title
      book[:rental_details][:student_name] = student_name
      book[:rental_details][:date] = due_date
    end
  end
end

end

# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

# [{title: "book1", rental_details: {student_name: "Jake", date: "01/01/2010"}}, {
#       title: "book2",
#       rental_details: {
#         student_name: "Sam",
#         date: "01/02/2010"
#       }
#     },
