class WelcomeController < ApplicationController

  # function that lists all stories
  def index
    @stories = Story.all
  end

end
