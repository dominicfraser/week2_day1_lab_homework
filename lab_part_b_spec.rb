require ("minitest/autorun")
require ("minitest/rg")
require_relative ("lab_part_b")

class SportsTeam < MiniTest::Test
  def setup
    @example_team = SportsTeam.new("Jakes",["Sam1","Sam2","Sam3"],"Bob")
  end

end