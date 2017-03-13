require ("minitest/autorun")
require ("minitest/rg")
require_relative ("lab_part_b")

class TestSportsTeam < MiniTest::Test
  def setup
    @example_team = SportsTeam.new("Jakes",["Sam1","Sam2","Sam3"],"Bob")
  end

  def test_get_team_name
    assert_equal("Jakes", @example_team.team_name)
  end

end