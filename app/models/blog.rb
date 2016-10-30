class Blog < ApplicationRecord
	belongs_to :user
	has_many :comments

	validates :title, presence: true,
				length: { maximum: 75 }
	validates :post, presence: true,
				length: { maximum: 1500 }

end
