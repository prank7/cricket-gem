module Cricket

	Sponsor = Struct.new(:name, :earn)

	module Sponsors

		SPONSORS = [Sponsor.new(:Bsnl, 10),
			Sponsor.new(:Sahara, 20),
			Sponsor.new(:Vodafone, 30),
			Sponsor.new(:LIC, 15)]

		def self.random
			SPONSORS.sample
		end
	end

end