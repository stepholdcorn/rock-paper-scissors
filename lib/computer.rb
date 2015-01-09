class Computer

	def choice
		if random_number < 0.33
			'rock'
		elsif random_number > 0.66
			'paper'
		else
			'scissors'
		end
	end

	def random_number
		rand
	end

end