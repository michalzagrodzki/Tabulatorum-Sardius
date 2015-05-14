class Chapter < ActiveRecord::Base

  # Assocations with stories
  belongs_to :story

  # Assocations with pictures
  has_many :pictures, inverse_of: :chapter

  # Allows to save into child models
  accepts_nested_attributes_for :pictures, reject_if: lambda {|attributes|
                                            attributes['link'].blank?
                                            attributes['story_id'].blank? }

  # Check presence of text
  validates :text, presence: true
end
