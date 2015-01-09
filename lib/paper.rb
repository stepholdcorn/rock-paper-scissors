class Paper

	def play(computer)
		if computer.choice == 'rock'
			'Win'
		elsif computer.choice == 'scissors'
			'Lose'
		else
			'Draw'
		end
	end

end