ActiveAdmin.register Club do
  index do
      column "id"
      column "club_name"
      column "club_goals"
      column "club_assists"
      column "club_position"
      column "club_manager"
      column "club_founded"
      actions
        
  end
  permit_params :id, :club_name, :club_goals, :club_assists, :club_position, :club_manager, :club_founded
  
end