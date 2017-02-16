require_relative "./team_data"

class Team
  POSITIONS =
  [
        "Catcher",
        "Pitcher",
        "1st Base",
        "2nd Base",
        "3rd Base",
        "Shortstop",
        "Right Field",
        "Center Field",
        "Left Field"
  ]

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.players(team)
    @players = []
    TeamData::ROLL_CALL.each do | teams |
      if teams[0].to_s == team
        teams[1].each do | player |
          @players <<  Player.new(player[1],player[0],teams[0])
        end
      end
    end
    @players
  end

  def self.all
    @team_names = []
    TeamData::ROLL_CALL.each do | team |
      @team_names << team[0]
    end
    @team_names
  end
end
