class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(name, domain)
        self.name = name
        self.domain = domain
    end

    def self.find_by_founder(founder_string)
        self.all.find {|startup| startup.founder == founder_string}
    end

    def self.domains
        self.all.map(&:domain)
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def rounds
        FundingRound.all.select{|round| round.startup == self}
    end

    def num_funding_rounds
        self.rounds.count
    end

    def total_funds
        self.rounds.sum(&:investment)
    end

    def investors
        self.rounds.map(&:venture_capitalist).uniq
    end

    def big_investors
        binding.pry
        big_spenders = investors.select{|vc| vc.total_worth > 1000000000}
        big_spenders.uniq
    end

end
