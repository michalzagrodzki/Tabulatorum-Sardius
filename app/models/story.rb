class Story < ActiveRecord::Base

  # Association with tags
  belongs_to :tag

  # Check presence of title and minimum length of text
  validates :name, presence: true, length: { minimum: 3 }

end
