class Product < ApplicationRecord
	has_many :line_items, dependent: :destroy
	 paginates_per 10
end
