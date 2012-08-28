module MatchesHelper
  
  def link_to_games(name, match, f)
    game = match.games.build
    2.times {game.games_players.build}
    
    id = "Game_#{match.games.length}"
    game_number = @match.games.length
   
    games = f.simple_fields_for :games do |builder| 
		  render "game_fields", :f => builder, :game_number => game_number
    end
    
    link_to(name, '#', class: "add-game btn btn-primary", data: {id: id, fields: games.gsub("\n", "")})
  end
  
end
