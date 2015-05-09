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
  accepts_nested_attributes_for :chapters, rejects_if: reject_chapter
  accepts_nested_attributes_for :advices, reject_if: reject_advice
  accepts_nested_attributes_for :pictures, reject_if: reject_picture

  # Check presence of title and minimum length of text
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

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

  # Validation for creating new Chapter - :text must be filled
  def reject_chapter
    attributed[:text].blank?
  end

  # Validation for creating new Advice - :text must be filled
  def reject_advice
    attributed[:text].blank?
  end

  # Validation for creating new Picture - :link must be filled
  def reject_picture
    attributed[:link].blank?
  end

end
