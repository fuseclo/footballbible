ActiveAdmin.register Article do
  index do
    column "id"
    column "article_title"
    column "article_big"
    column "article_small"
    column "article"
    column "article_image"
    column "player_id"
    column "club_id"
    actions
  end
  
  permit_params :id, :article_title, :article_big, :article_small, :article_image, :player_id, :club_id

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
