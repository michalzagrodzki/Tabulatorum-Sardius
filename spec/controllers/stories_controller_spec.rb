require 'rails_helper'
require 'factory_girl_rails'

describe StoriesController do

  describe "GET #index" do
    it "populates an array of stories" do
      story = Factory(:story)
      get :index
      assigns(:stories).should eq([story])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

end
