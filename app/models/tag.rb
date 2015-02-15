class Tag < ActiveRecord::Base

  # Association with stories
  has_many :stories
end
