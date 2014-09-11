module Cricket
	class Player
	attr_reader :name, :specialist

	def initialize(name)
		@name = name.capitalize
		types_of_batsman = ["Test", "Odi", "T20"]
		@specialist = types_of_batsman[rand(0..2)]
		@sponsors = Hash.new(0)
	end

	def to_s
		"This is #{@name}, a #{@specialist.to_s} specialist, nicknamed #{nickname}."
	end

	def nickname
		@name + "India"
	end

	def playTest(balls)
		if @specialist == "Test"
			run = (balls * 0.7).to_i
		else
			run = (balls * 0.5).to_i
		end
	end

	def playODI(balls)
		if @specialist == "Odi"
			run = (balls * 1.1).to_i
		else
			run = (balls * 1)
		end
	end

	def playT20(balls)
		if @specialist == "T20"
			run = (balls * 1.8).to_i
		else
			run = (balls * 1.2).to_i
		end
	end

	def all_sponsors(sponsor)
		@sponsors[sponsor.name] += sponsor.earn
	end

	def earning
		@sponsors.values.reduce(0, :+)
	end


	end


	# __FILE__ refers to this file, $0 means current runing file
	if __FILE__ == $0
	player1 = Cricket::Player.new("Kohli", "ODI")
	puts player1.name
	puts player1.playTest(120)
	puts player1.playT20(23)
	end
end