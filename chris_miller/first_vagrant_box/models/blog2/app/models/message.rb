class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates :author, :message, presence: true, length: { in: 1..100 }
end
