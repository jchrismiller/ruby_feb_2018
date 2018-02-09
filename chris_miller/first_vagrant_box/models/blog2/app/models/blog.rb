class Blog < ActiveRecord::Base
	has_many :owners
	has_many :users, through: :owners
	has_many :posts
	validates :name, :description, presence: true, length: { in: 1..100 }
end
