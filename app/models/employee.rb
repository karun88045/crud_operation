class Employee < ApplicationRecord
  has_many :documents
  validates :name, :email, :password, :phone, :address, presence:true
end
