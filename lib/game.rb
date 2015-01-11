class Game

	attr_accessor :player_1, :player_2

	def intialize
		player_1, player_2 = nil, nil
	end

	def add_player(player)
		if self.player_1 != nil
			self.player_2 = player
		else
			self.player_1 = player
		end
	end

end