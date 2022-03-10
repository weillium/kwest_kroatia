json.extract! user, :id, :first_name, :last_name, :user_type_id, :family_id, :phone_number, :dietary_restrictions, :headshot, :walkup_song, :adventure_score, :nightlife_score, :beachwater_score, :freetime_score, :created_at, :updated_at
json.url user_url(user, format: :json)
json.token user.generate_jwt