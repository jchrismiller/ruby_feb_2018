class BankAccount
	attr_accessor :checking, :savings, :interest_rate, :account
	@@no_of_accounts = 0
	def initialize checking, savings, interest_rate=0.01, account = 9.times.map{rand(10)}.join		
		@checking = checking
		@savings = savings
		@interest_rate = interest_rate
		@account = account
		@@no_of_accounts += 1
	end

	def deposit_checking(num)
		@checking += num
		self
	end

	def deposit_savings(num)
		@savings += num
		self
	end

	def withdraw_checking(num)
		if num > @checking
			return "Insufficient Funds"
		end
		return @checking -= num
	end

	def check_checking
		"Checking Balance: $#{@checking}"
	end

	def check_savings
		"Savings Balance: $#{@savings}"
	end

    def check_total
        "Total Balance: $#{@checking + @savings}"
    end

    def account_info
    	"Acct Number: #{@account} Checking Amount: $#{@checking} Savings Amount: $#{@savings} Interest Rate #{@interest_rate}%"
    	puts check_total
    	self
    end

	private
		def gen_acct
			@acct_num = @acct_num.rand(100)
		end
end

# user1 = BankAccount.new(0,0)

# # user1.deposit_checking(300)
# # user1.withdraw_checking(400)
# # puts user1.check_savings
# puts user1.check_checking
# puts "Hello World"
# puts user1.account_info

# user1.checking = 2000000
# puts user1.check_checking