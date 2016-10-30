class Blog < ApplicationRecord
	validates :title, presence: true,
				length: { maximum: 75 }
	validates :post, presence: true,
				length: { maximum: 1500 }

	belongs_to :User

end
