require "sinatra"
require "pry"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>
    <body>
      <ul>
        <li><a href=/teams>Teams</a></li>
        <li><a href=/players>All League Players</a></li>
        <li><a href=/positions>Positions</a></li>
      </ul>
    </body>
    "

end

get "/teams" do
  @team_names = Team.all
  erb :teams
end

get "/teams/:team_name" do
    @players = Team.players(params[:team_name])
    erb :team_page
end

get "/players" do
    @all_players = Player.all
    erb :players
end

get "/positions" do
    @positions = Team::POSITIONS
    erb :positions
end

get "/positions/:position" do
  @players = Player.player_by_position(params[:position])
  erb :player_by_position
end
