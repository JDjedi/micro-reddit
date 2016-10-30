class Comment < ApplicationRecord
	belongs_to :blog
	belongs_to :user
	validates :post_comment, presence: true,
				length: { maximum: 100 }
end

