ActiveAdmin.register Player do
  index do
    column "id"
    column "player_name"
    column "player_nation"
    column "club_id"
    column "player_number"
    column "player_club"
    column "player_goals"
    column "player_assists"
    column "player_position"
    column "player_passes"
    column "player_image"
    actions
  end

  permit_params :id, :player_name, :player_nation, :club_id, :player_number, :player_club, :player_goals, :player_assists, :player_position, :player_passes, :player_image

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
