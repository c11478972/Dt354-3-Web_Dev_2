class Genre < ActiveRecord::Base
	has_many :movies
	validates :name, presence: true #Validates that name cannot be null
	validates :name, uniqueness: true #Validates that name must be unique
end
