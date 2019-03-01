require 'pry'
require_relative './customers.rb'
require_relative './banks.rb'
require_relative './accounts.rb'




c1 = Customer.new("Cory", "Checking")
c2 = Customer.new("Jessica", "Savings")
c3 = Customer.new("Mark", "Checking")

b1 = Bank.new("Chase")
b2 = Bank.new("BOFA")

a1=Account.new(c1, b1, 5000)
a2=Account.new(c2,b1, 10000)
a3=Account.new(c3,b2,50000)
a4=Account.new(c2,b2,1000)


binding.pry
