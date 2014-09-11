require_relative 'team'

module Cricket
	module Game

		def self.playerScore(player, gameType)
			gameType = gameType.capitalize
			case gameType
			when "Test"
				balls = rand(0..400)
				player.playTest(balls)
			when "Odi"
				balls = rand(0..175)
				player.playODI(balls)
			when "T20"
				balls = rand(0..75)
				player.playT20(balls)
			else
				puts "Wrong GameType"
			end
		end

	end
end