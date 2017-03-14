class Library

#set useful else returns and gaurd clauses to expand on the below

  attr_accessor :books_array

  def initialize(books_array)
    @books_array = books_array
#better->@books_array = books_array || []
#sets as empty array if books is nil
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

#or can make it more compressed as
  #book[:rental_details] = {student_name: student, date: date}
      end
    end
  end

end

