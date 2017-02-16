require_relative "./team_data"

class Player
  attr_reader :name, :position, :team

  def initialize(name, position, team)
    @name = name
    @position = position
    @team = team
  end

  def self.player_by_position(position)
    @players = []
    TeamData::ROLL_CALL.each do | teams |
      teams[1].each do | player |
        if player[0].to_s == position
          @players <<  Player.new(player[1],player[0],teams[0])
        end
      end
    end
  @players
  end

  def self.all
    @all_players = []
    TeamData::ROLL_CALL.each do | team |
      team[1].each do | player |
        @all_players <<  new(player[1],player[0],team[0])
      end
    end
    @all_players
  end

end
