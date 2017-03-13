require ("minitest/autorun")
require ("minitest/rg")
require_relative ("lab_extesion")

class TestLibrary < MiniTest::Test

def setup
  @books = {
      title: "book1",
      rental_details: {
        student_name: "Jake",
        date: "01/01/2010"
      },
      title: "book2",
      rental_details: {
        student_name: "Sam",
        date: "01/02/2010"
      },
      title: "book3",
      rental_details: {
        student_name: "Rob",
        date: "01/03/2010"
      },
      title: "book4",
      rental_details: {
        student_name: "Chris",
        date: "01/04/2010"
      },

    }

  @Library1 = Library.new(@books)


end
