class Author < ApplicationRecord
	has_many :books
	has_many :third_models, through: books:
end
