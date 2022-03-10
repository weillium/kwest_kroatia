class Family < ApplicationRecord
  mount_base64_uploader :crest, CrestUploader

  # Direct associations

  has_many   :users,
             :dependent => :destroy

  has_many   :scores,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :presence => true

  # Scopes

  def to_s
    name
  end

end
