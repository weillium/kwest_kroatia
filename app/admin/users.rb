ActiveAdmin.register User do

 permit_params :email, :password, :first_name, :last_name, :user_type_id, :family_id, :phone_number, :dietary_restrictions, :headshot, :walkup_song, :adventure_score, :nightlife_score, :beachwater_score, :freetime_score

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
