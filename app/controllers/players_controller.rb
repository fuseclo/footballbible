class PlayersController < ApplicationController
  def index
  	@players = Player.all
  end

  def show
  end

  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)

  	if @player.save
  		flash[:notice] = "Player added successfully."
  		redirect_to(:action => 'index')
  	else
  		flash[:notice] = "Error creating player"
  		render('new')
  	end
  end

  def edit
  end

  def delete
  end

  private
  	def player_params
  		params.require(:player).permit(:player_name, :player_nation, :club_id, :player_number, :player_club, :player_goals, :player_assists)
  	end
end