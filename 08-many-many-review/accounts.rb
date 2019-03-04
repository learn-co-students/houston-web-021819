class Account
    attr_accessor :customer, :bank, :balance
    @@all = []

    def initialize(customer,bank,balance)
        @customer = customer
        @bank = bank
        @balance =balance
        @@all<<self

    end
    
    def self.all
        @@all
    end
end