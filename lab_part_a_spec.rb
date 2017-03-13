require ("minitest/autorun")
require ("minitest/rg")
require_relative ("lab_part_a")

class TestStudent < MiniTest::Test

  def setup
    @student_1 = Student.new("Jake", 12)
  end

  def test_get_student_name
    assert_equal("Jake", @student_1.s_name)
  end

  def test_change_student_name
    @student_1.change_s_name("Sam")
    assert_equal("Sam", @student_1.s_name)
  end

end