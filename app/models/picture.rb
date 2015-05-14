class Picture < ActiveRecord::Base

  # Association with stories
  belongs_to :story

  # Association with stories
  belongs_to :chapter

  # Association with stories
  belongs_to :advice

  # Check presence of title and link
  validates :title, presence: true, length: { minimum: 3 }
  validates :link, presence: true, length: { minimum: 3 }
  validates :story_id, presence: true

end
