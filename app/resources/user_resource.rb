class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :first_name, :string
  attribute :last_name, :string
  attribute :user_type_id, :integer
  attribute :family_id, :integer
  attribute :phone_number, :string
  attribute :dietary_restrictions, :string
  attribute :headshot, :string
  attribute :walkup_song, :string
  attribute :adventure_score, :integer
  attribute :nightlife_score, :integer
  attribute :beachwater_score, :integer
  attribute :freetime_score, :integer

  # Direct associations

  belongs_to :family

  belongs_to :user_type

  has_many   :agenda_items,
             foreign_key: :leader_id

  # Indirect associations
end
