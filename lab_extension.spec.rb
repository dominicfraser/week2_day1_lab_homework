require ("minitest/autorun")
require ("minitest/rg")
require_relative ("lab_extension")

class TestLibrary < MiniTest::Test

  def setup
    @books = [{
        title: "book1",
        rental_details: {
          student_name: "Jake",
          date: "01/01/2010"
          }
        },
        {
        title: "book2",
        rental_details: {
          student_name: "Sam",
          date: "01/02/2010"
        }
      },
      {
        title: "book3",
        rental_details: {
          student_name: "Rob",
          date: "01/03/2010"
        }
      }
    ]

    @library1 = Library.new(@books)
  end

  def test_list_all_books
    assert_equal(@books, @library1.books_array)
  end

  def test_info_of_given_book
    assert_equal({
        title: "book1",
        rental_details: {
          student_name: "Jake",
          date: "01/01/2010"
          }
        }, @library1.book_info("book1"))
  end

  def test_title_returns_rental_details
    assert_equal({
          student_name: "Jake",
          date: "01/01/2010"
          }, @library1.rental_info("book1"))
  end

  def test_add_book
    @library1.add_book("book4")
    assert_equal({
        title: "book4",
        rental_details: {
          student_name: "",
          date: ""
          }
        }, @library1.books_array.last)
  end

  def test_change_rental_details
    @library1.new_rental("book1", "James", '01/06/2017')
    assert_equal({
        title: "book1",
        rental_details: {
          student_name: "James",
          date: "01/06/2017"
          }
        }, @library1.books_array[0])

  end


end