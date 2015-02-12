class Story < ActiveRecord::Base

  # check presence of title and minimum length of text
  validates :name, presence: true, length: { minimum: 3 }

end
