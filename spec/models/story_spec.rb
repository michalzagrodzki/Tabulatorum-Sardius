require 'rails_helper'

describe Story do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_numericality_of :latitude }
    it { should validate_numericality_of :longitude }
  end

  describe 'associations' do
    it { should have_many(:pictures) }
    it { should have_many(:chapters) }
    it { should have_many(:advices) }
  end

end
