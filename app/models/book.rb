class Book < ApplicationRecord
  belongs_to :author
  belongs_to :third_model
end
