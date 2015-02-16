class Tag < ActiveRecord::Base

  # Association with stories
  has_many :stories

  # Check presence of type of tag and minimum length of 2
  validates :type, presence: true, length: { minimum: 2 }

end
