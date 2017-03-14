class SportsTeam
  
  attr_accessor :team_name, :players, :coach, :points
  #can also not include in accessor as long as there is a method to change it, more secure than team_name.team_name = 

  def initialize(team_name, players, coach, points=0)
    #don't need to have points=0 parameter if ALWAYS going to be zero, below can then just be @points = 0
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
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
    # @players.include?(player) ? true : false
    for eachplayer in players
      if eachplayer == player
        return true
      else
        return false
      end
    end
  end

  def match_result(result)
    if result.downcase == "won"
      @points += 1
    elsif result.downcase == "lost"
      @points -= 1
    elsif result.downcase == "draw"
      @points = @points
    else
      "error"
    end
  end
#make this better, case?
end