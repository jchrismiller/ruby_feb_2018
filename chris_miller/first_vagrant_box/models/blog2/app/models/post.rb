class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages
  validates :title, :content, presence: true, length: { in: 1..100 }
end
