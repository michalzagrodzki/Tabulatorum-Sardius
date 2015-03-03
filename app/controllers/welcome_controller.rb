class WelcomeController < ApplicationController

  # function for showing all stories
  def index
    @stories = Story.all
  end

end
