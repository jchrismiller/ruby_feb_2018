require_relative 'apple_tree'

RSpec.describe Apple_tree do
	before(:each) do
		@tree1 = Apple_tree.new(5)
	end
	it 'has a getter and setter for age' do
		@tree1.age = 6

		expect(@tree1.age).to eq(6)
	end
	it 'has getter for height' do
		expect(@tree1.get_height).to eq(20)		
	end
	it 'has getter for apple_count' do
		expect(@tree1.get_apple_count).to eq(30)
	end
	it 'has a years gone by method' do
		expect(@tree1.years_gone_by).to eq('6, 22, 32')
	end
	it 'has an apple-picking method' do
		@tree1.pick_apples
		expect(@tree1.get_apple_count).to eq(0)
	end
end