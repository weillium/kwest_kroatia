class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :first_name, :presence => true

  validates :freetime_score, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0 }

  validates :last_name, :presence => true

  validates :nightlife_score, :numericality => { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0 }

  validates :phone_number, :presence => true

  validates :walkup_song, :presence => true

  # Scopes

  def to_s
    created_at
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
