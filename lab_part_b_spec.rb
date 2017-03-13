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

  def test_change_team_name
    assert_equal("Lizs", @example_team.change_team_name("Lizs"))
  end

  def test_get_all_players
    assert_equal(["Sam1","Sam2","Sam3"], @example_team.all_players)
  end

  def test_get_specific_player
    assert_equal("Sam2", @example_team.player_no(2))
  end

  def test_change_coach
    assert_equal("Rob",@example_team.change_coach("Rob"))
  end


end