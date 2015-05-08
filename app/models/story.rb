class Story < ActiveRecord::Base

  # Serialize column for showing values from hash
  serialize :story_text

  # Association with tags
  has_many :tags

  # Assocations with pictures
  has_many :pictures

  # Assocations with chapters
  has_many :chapters

  # Check presence of title and minimum length of text
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

  # Returns story, which contains at least one word from query
  # Word 'search' is linked to Controller and View
  def self.search(query)
    # parameters for exact search
    where("name like ?", "%#{query}%")
  end

  # Allow tags to be destroyed by nested attributes
  accepts_nested_attributes_for :tags, reject_if: proc { |attrs| attr.all? {
                                                        |value, key| value.blank? }
                                                        }
end
