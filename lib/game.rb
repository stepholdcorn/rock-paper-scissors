class Game

	attr_accessor :player_1, :player_2

	def intialize
		player_1, player_2 = nil, nil
	end

	def add_player(player)
		self.player_1 != nil  ? self.player_2 = player : self.player_1 = player
	end

	def ready?
		true if player_1 != nil && player_2 != nil
	end

	def has_both_choices?
		true if player_1.choice != nil && player_2.choice != nil
	end

end