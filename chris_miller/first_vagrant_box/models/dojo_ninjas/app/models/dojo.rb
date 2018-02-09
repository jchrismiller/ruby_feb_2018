class Dojo < ActiveRecord::Base
	has_many :ninjas
	validates :name, :city, presence: true
	validates :state, presence: true, length: { in: 1..2 }
end
