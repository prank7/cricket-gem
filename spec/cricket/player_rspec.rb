require 'cricket/player'

module Cricket
	describe Player do
		
		before do
			@specialist = "test"
			@p1 = Cricket::Player.new("rahul")
		end

		it "has a capitalized title" do
			@p1.name.should == "Rahul"
		end	

		it "has a capitalized specialist" do
			@p1.specialist.should == "Test"
		end			

		it "should score at a strike rate of 70" do
			@p1.playTest(100).should == 70
		end
		
	end
end