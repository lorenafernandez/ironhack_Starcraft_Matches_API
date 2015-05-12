# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = ["Rafael Nadal", "Roger Federer", "Djokovic", "Ferrer"];
factions = ["Spain", "Switzerland", "Croatia", "Spain"];


(0..players.length-1).to_a.each do |i|
	player = Player.create(name: players[i], favorite_faction: factions[i])

		(1..4).to_a.each do |j|
			player.winners.create winner_faction: player.favorite_faction, loser_faction: "Croatia", loser_id: 3,
								  duration: 1500, start: j.day.ago
			player.losers.create winner_faction: "Switzerland", loser_faction: player.favorite_faction, winner_id: 4,
								  duration: 1500, start: j.day.ago
							
		end

end


