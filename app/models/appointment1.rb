class Appointment1 < ApplicationRecord
	belongs_to :physician
    belongs_to :patient
end