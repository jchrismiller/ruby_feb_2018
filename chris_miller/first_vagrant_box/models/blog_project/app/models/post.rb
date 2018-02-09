class Post < ActiveRecord::Base
  belongs_to :blog
  validates :title, presence: true, length: { in: 7..100 }
  validates :content, presence: true

end

# know how to retrieve all posts for the first blog.