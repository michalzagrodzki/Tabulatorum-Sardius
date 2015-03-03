class Story < ActiveRecord::Base

  # Association with tags
  has_many :tags

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
