class User < ApplicationRecord
	has_many :blogs
	has_many :comments
	before_save { self.email = self.email.downcase }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :username, presence: true,
				length: { maximum: 50 },
				uniqueness: true
	validates :email, presence: true,
				length: { maximum: 255 },
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: {case_sensitive: false}
end
