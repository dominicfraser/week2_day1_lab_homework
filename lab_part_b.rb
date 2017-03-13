class SportsTeam
  
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def team_name
    return @team_name
  end

  def change_team_name(new_name)
    @team_name = new_name
  end

  def all_players
    return @players
  end

  def player_no(number)
    return @players[number-1]
  end

  def change_coach(new_name)
    @coach = new_name
  end

  def add_player(player)
    @players << player
  end

  def player_present?(player)
    
  end

end