require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

##VCs
rich = VentureCapitalist.new("Rich", 1000000000)
poor = VentureCapitalist.new("Richerd", 2000000000)
steve = VentureCapitalist.new("Steve", 700000000)

##Startups
uber = Startup.new("Uber", "Lauren", "travel")
lyft = Startup.new("Lyft", "Alvin", "travel")
seamless = Startup.new("Seamless", "Erica", "food")




##Funding Rounds
round1 = FundingRound.new(uber, rich, "Angel", 500.0)
round2 = FundingRound.new(lyft, rich, "Angel", 600.0)
round3 = FundingRound.new(uber, poor, "Seed", 75.0)
round4 = FundingRound.new(seamless, steve, "Series A", 100.0)
round5 = FundingRound.new(lyft, steve, "Series B", 82.5)

rich.invested("travel")

#run this: ruby tools/console.rb

binding.pry
0 #leave this here to ensure binding.pry isn't the last line