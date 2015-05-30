require 'rails_helper'

describe Picture do

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :link }
    it { should validate_presence_of :story_id }
    it { should validate_numericality_of :latitude }
    it { should validate_numericality_of :longitude }
  end

  describe 'associations' do
    it { should belong_to(:story) }
    it { should belong_to(:advice) }
    it { should belong_to(:chapter) }
  end

end
