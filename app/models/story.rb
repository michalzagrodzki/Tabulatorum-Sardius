class Story < ActiveRecord::Base

  # Association with tags
  has_many :tags

  # Check presence of title and minimum length of text
  validates :name, presence: true, length: { minimum: 3 }

  # Allow tags to be destroyed by nested attributes
  accepts_nested_attributes_for :tags, reject_if: proc { |attrs| attr.all? {
                                                        |value, key| value.blank? }
                                                        }
end
