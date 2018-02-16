class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true, length: { in: 2..20 }
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :age, numericality: { only_integer: true, greater_than: 9, less_than: 151 }

  # creating a custom instance method. self refers to the ActiveRecord object
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

