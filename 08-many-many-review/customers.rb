class Customer
    attr_accessor :name, :acc_type
    @@all = []


    def initialize(name, acc_type)
        @name = name
        @acc_type = acc_type
        @@all<<self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select do |account|
            account.customer == self
        end
    end

    def banks
        self.accounts.map do |account|
         account.bank
        end
    end

    def totalbalance
        total = 0
        self.accounts.map do |account|
            total += account.balance
        end
        total
    end


end