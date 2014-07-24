class AdminController < ApplicationController
	def index
		@players = Player.all
		@clubs = Club.all
		@users = User.all
	end
end