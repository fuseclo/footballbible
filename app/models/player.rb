class Player < ActiveRecord::Base
	belongs_to :club
	has_many :articles

	scope :goalkeepers, lambda{where(:player_position => 'goalkeeper')}
	scope :defenders, lambda{where(:player_position => 'defender')}
	scope :midfielders, lambda { where(:player_position => 'midfielder') }
	scope :attacking_midfielders, lambda{where(:player_position => 'attacking_midfielder')}
	scope :strikers, lambda{where(:player_position => 'striker')}

	def to_s
		player_name
	end
end