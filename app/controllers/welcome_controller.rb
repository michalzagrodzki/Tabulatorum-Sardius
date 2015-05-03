class WelcomeController < ApplicationController

  expose(:stories)

  # function for showing all stories
  def index
    # description of @stories is not necessary - it is handled by decent_exposure
  end

end
