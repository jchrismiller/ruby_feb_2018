class User < ActiveRecord::Base
  has_secure_password
  validates :name, :alias, :email, presence: true

  has_many :bright_ideas
  has_many :likes
  has_many :bright_ideas, through: :likes
end
