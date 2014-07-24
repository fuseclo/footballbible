class ClubsController < ApplicationController
  def index
  	@clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
  end

  def new
  	#@club = Club.new
    redirect_to(:controller => 'clubs', :action => 'index')
  end

  def create
  	@club = Club.new(club_params)

  	if @club.save
  		flash[:notice] = "Club created"
  		redirect_to(:action => 'index')
  	else
  		flash[:notice] = "Failed to create club"
  		render('new')
  	end
  end

  def edit
  end

  def delete
  end

  
  	def club_params
  		params.require(:club).permit(:club_name, :player_id, :club_goals, :club_assists, :club_position, :club_manager, :club_founded, :club_manager, :club_founded)
  	end
end
