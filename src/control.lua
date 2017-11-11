script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	
	-- Move Player 50,000 tile east.
	player.teleport({x = global.starting_location_x, y = gobal.starting_location_y})
	
	-- Exposes a radius around where the player will teleport
	player.force.chart(player.surface, {{player.position.x-global.radius, player.position.y-global.radius}, {player.position.x+global.radius, player.position.y+global.radius}})

end)