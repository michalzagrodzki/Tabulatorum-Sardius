class Picture < ActiveRecord::Base

  # Association with stories
  belongs_to :story

  # Check presence of title and link
  validates :title, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :link, presence: true, uniqueness: true, length: { minimum: 3 }

end
