require_relative 'bank_account'
RSpec.describe BankAccount do
	before(:each) do
		@account1 = BankAccount.new(20,20)
	end

	it 'has a getter method for the checking acct balance' do
		expect(@account1.check_checking).to eq("Checking Balance: $20")
		expect(@account1.checking).to eq(20)

	end
	it 'has a getter for total balance' do
		expect(@account1.check_total).to eq("Total Balance: $40")	
	end
	it 'has a withdraw function' do
		@account1.withdraw_checking(10)
		expect(@account1.checking).to eq(10)
	end
	it 'has a withdraw function' do
		expect(@account1.withdraw_checking(30)).to eq("Insufficient Funds")
	end

	it 'error when user tries to retrieve no_of_accts' do
		@@no_of_accounts
		expect("uninitialized class variable @@no_of_accounts in Object")
	end
end