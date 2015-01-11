class Player

	attr_accessor :name, :choice

	def has_name?
		!@name.nil?
	end

	def has_choice?
		!@choice.nil?
	end

end