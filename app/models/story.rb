class Story < ActiveRecord::Base

  # Serialize column for showing values from hash
  serialize :story_text

  # Association with tags
  has_many :tags, inverse_of: :story

  # Assocations with pictures
  has_many :pictures, inverse_of: :story

  # Assocations with chapters
  has_many :chapters, inverse_of: :story

  # Assocations with advices
  has_many :advices, inverse_of: :story

  # Allows to save into child models
  accepts_nested_attributes_for :chapters, reject_if: lambda {|attributes| attributes['text'].blank?}, allow_destroy: true
  accepts_nested_attributes_for :advices, reject_if: lambda {|attributes| attributes['text'].blank?}, allow_destroy: true
  accepts_nested_attributes_for :pictures, reject_if: lambda {|attributes| attributes['link'].blank?}

  # Check presence of title and minimum length of text
  validates :name, presence: true, length: { minimum: 3 }
  validates :latitude, numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

  # Returns story, which contains at least one word from query
  # Word 'search' is linked to Controller and View
  def self.search(query)
    # parameters for exact search
    where("name like ?", "%#{query}%")
  end

  # Allow tags to be destroyed by nested attributes when there is no input in value
  accepts_nested_attributes_for :tags, reject_if: proc { |attrs| attr.all? {
                                                        |value, key| value.blank? }
                                                        }
end
