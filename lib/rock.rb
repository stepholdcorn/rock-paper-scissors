class Rock

	def play(computer)
		if computer.choice == 'scissors'
			'Win'
		elsif computer.choice == 'paper'
			'Lose'
		else
			'Draw'
		end
	end

end