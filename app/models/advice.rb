class Advice < ActiveRecord::Base

  # Assocations with stories
  belongs_to :story

  # Assocations with pictures
  has_many :pictures, inverse_of: :advice

  # Allows to save into child models
  accepts_nested_attributes_for :pictures, reject_if: reject_picture

  # Check presence of text
  validates :text, presence: true, length: { minimum: 3 }

  # Validation for creating new Picture - :link must be filled
  def reject_picture
    attributed[:link].blank?
  end

end
