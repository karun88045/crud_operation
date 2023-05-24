class Patient < ApplicationRecord
	has_many :appointment1s
    has_many :physicians, through: :appointment1s
end