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

  def test_get_student_cohort
    assert_equal(12, @student_1.cohort)
  end

  def test_change_student_cohort
    @student_1.change_cohort(13)
    assert_equal(13, @student_1.cohort)
  end

  def test_can_student_talk?
    talk = @student_1.talk("I can talk!")
    assert_equal(String, talk.class)
  end

  def test_favourite_programming_lang
    assert_equal("I love Ruby", @student_1.fav_lang("Ruby"))
  end

end