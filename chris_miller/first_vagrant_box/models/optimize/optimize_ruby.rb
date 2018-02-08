# Retrieve all players, then write a program that will loop through each player and display their team name, mascot and stadium. How many queries have we done? 
players = Player.includes(:team)
players.each do |player|
puts player.team.name, player.team.mascot, player.team.stadium
end

# Retrieve all players and write a program to loop through each player and their team name, mascot and stadium using .includes. How many queries have we done now?
players = Player.all
players.each do |player|
puts player.team.mascot, player.team.stadium
end

# Retrieve all players from the 'Chicago Bulls' by using .includes
Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)

# Retrieve all players along with the team name that play at the 'Staples Center'
Player.includes(:team).where("teams.stadium = 'Staples Center'").references(:team)

# Retrieve all teams that have any player that start their name with the letter 'Z' by using .includes and .joinsS
Player.joins(:team).where("players.name LIKE 'Z%'")