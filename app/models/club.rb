class Club < ActiveRecord::Base
	has_many :players
	has_many :articles

	def to_s
		club_name
	end
end