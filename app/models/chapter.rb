class Chapter < ActiveRecord::Base

  # Assocations with stories
  belongs_to :story

  # Assocations with pictures
  has_many :pictures

  # Check presence of text
  validates :text, presence: true, length: { minimum: 3 }

end
