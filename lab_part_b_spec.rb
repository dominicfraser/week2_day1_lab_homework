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

  def test_add_new_player
    @example_team.add_player("Sam4")
    assert_equal(["Sam1","Sam2","Sam3", "Sam4"], @example_team.all_players)
  end

  def test_is_player_on_team?
    assert_equal(true, @example_team.player_present?("Sam1"))
    assert_equal(false, @example_team.player_present?("Sam5"))
  end

  def test_change_points
    @example_team.points = 2
    assert_equal(3, @example_team.match_result("won"))
    @example_team.points = 2
    assert_equal(1, @example_team.match_result("lost"))
  end





end