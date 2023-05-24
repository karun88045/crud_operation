class Physician < ApplicationRecord
	has_many :appointment1s
    has_many :patients, through: :appointment1s
end