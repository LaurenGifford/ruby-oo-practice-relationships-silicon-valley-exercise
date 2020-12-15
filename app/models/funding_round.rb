##joiner class

class FundingRound

     attr_accessor :type, :startup, :investment
     attr_reader :venture_capitalist

    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @type = type
        @startup = startup
        @venture_capitalist = venture_capitalist
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

end

