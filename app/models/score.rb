class Score < ApplicationRecord
  # Direct associations

  belongs_to :family

  # Indirect associations

  # Validations

  validates :dsecription, presence: true

  validates :family_id, presence: true

  validates :score, presence: true

  # Scopes

  def to_s
    family.to_s
  end
end
