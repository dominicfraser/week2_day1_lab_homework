require ("minitest/autorun")
require ("minitest/rg")
require_relative ("lab_part_a")

class TestStudent < MiniTest::Test

  def setup
    @student_1 = Student.new("Jake", 12)
  end


end