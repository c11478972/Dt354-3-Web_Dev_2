class Movie < ActiveRecord::Base
	belongs_to :genre
	has_many :posts, :dependent => :destroy
	validates :title, presence: true,  uniqueness: true
	validate :must_have_vaild_trailer
	
	def must_have_vaild_trailer
		unless trailer.include?("<iframe")
			errors.add(:trailer, "Must include an iframe tag")
		end
	end
end
