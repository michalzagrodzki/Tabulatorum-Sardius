class Tag < ActiveRecord::Base

  # Check presence of type of tag and minimum length of 2
  validates :type, presence: true, length: { minimum: 2 }

  # Association with stories
  has_many :stories
end
