require 'rails_helper'

describe Advice do

  describe 'validations' do
    it { should validate_presence_of :text }
  end

  describe 'associations' do
    it { should have_many(:pictures) }
    it { should belong_to(:story) }
  end

end
