class ClubsController < ApplicationController
  def index
  	@clubs = Club.all
  end

  def new
  	@club = Club.new
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

  private
  	def club_params
  		params.require(:club).permit(:club_name, :player_id)
  	end
end
