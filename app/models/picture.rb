class Picture < ActiveRecord::Base

  # Association with stories
  belongs_to :story

end
