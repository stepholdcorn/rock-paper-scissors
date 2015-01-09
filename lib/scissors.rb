class Scissors

	def play(computer)
		if computer.choice == 'paper'
			'Win'
		elsif computer.choice == 'rock'
			'Lose'
		else
			'Draw'
		end
	end

end