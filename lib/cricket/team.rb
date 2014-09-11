require_relative 'player'
require_relative 'game'
require_relative 'sponsors'

module Cricket
	class Team
		attr_reader :total, :name
		def initialize(name)
			@name = name
			@players = []
			@score = []
			@total = 0
		end	

		def add_Players(player)
			@players << player
		end

		def displayTeam
			puts "\nThe Team #{@name} has:"
			@players.each do |player|
				puts "#{player.name}, #{player.specialist} specialist, has strike rate of #{player.playTest(100)} in Test, #{player.playODI(100)} in ODI, #{player.playT20(100)} in T20. "
			end
		end

		def play(gameType)
			puts "\n #{@name}'s Scorecard"
			@players.each do |player|
				individualScore = Game.playerScore(player, gameType)
				sponsored_by = Sponsors.random
				player.all_sponsors(sponsored_by)
				puts "#{player.name} scored #{individualScore} (Sponsored by #{sponsored_by.name} #{sponsored_by.earn} )"
				@score << individualScore
			end

			@total = @score.reduce(:+)
			puts "\nTotal Score: #{@total}"
			puts "Total Earning of team: #{total_earn}"
		end

		def total_earn
			@players.reduce(0) do |sum, player| 
				sum + (player.earning)
			end
		end

	end
end