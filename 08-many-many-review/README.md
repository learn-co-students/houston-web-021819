# Building out a many-to-many relationship

1. Write all of the "initialize" methods (first for the "many" classes, then for the "belongs to" class), as well as attr_accessor

2. Create the @@all class variable, shovel all new instances into the @@all array, and create a getting class method

3. Create some test data (making sure to pass in INSTANCES into the "belongs to"/"join" class) and make sure things work

4. Test code

5. From the "many" classes, create a method to get all of the "join" instances that belong to that instance

6. Test code

7. From the "many" classes, create a method to get all of the other "many" instances that belong to that instance

8. Test code

## customer
- Customer.new() should create a new customer with a name and account_type

- customer.name and customer.account_type should work

- Customer.all should return all customer instances

- customer.accounts should return all account that belong to the customer

- customer.banks should return all banks that are associated with the customer

- customer.balance should return total balance from all the accounts from all the bank that are associated with the customer

## bank
- Bank.new() should create a new bank with a name

- bank.name should work

- Bank.all should return all bank instances

- bank.account should return all account that belong to the bank

- bank.customers should return all of the Customers that are associated with the bank

## account
- account.new() should create a new account that takes an customer instance, bank instance and balance

- account.customer, account.bank and account.balance should work

- Account.all should return all account instances
